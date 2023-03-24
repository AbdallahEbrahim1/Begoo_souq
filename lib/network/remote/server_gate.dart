import 'dart:async';
import 'dart:convert';

import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/network/remote/logger.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';

import 'logger.dart';

class ServerGate {
// ignore: constant_identifier_names, non_constant_identifier_names
  String BASE_URL = 'https://begoworld.com/public';
  static final i = ServerGate._();
  final _dio = Dio();
  final LoggerDebug log =
      LoggerDebug(headColor: LogColors.red, constTitle: "Server Gate Logger");

  ServerGate._() {
    addInterceptors();
  }

  // final firebaseCrashlytics = KiwiContainer().resolve<FirebaseCrashlyticsConfig>();

  CancelToken cancelToken = CancelToken();

  Map<String, dynamic> _header() {
    return {
      // "Authorization": UserModel.instance.tokenWithType,
      "Accept": "application/json",
      "Accept-Language": LocaleKeys.lang.tr(),
      "lang": LocaleKeys.lang.tr(),
    };
  }

  void addInterceptors() {
    _dio.interceptors.add(CustomApiInterceptor(log));
  }

  // [][][][][][][][][][][][][] POST DATA TO SERVER [][][][][][][][][][][][][] //
  StreamController<double> onSingleReceive = StreamController.broadcast();

  Future<CustomResponse<T>> sendToServer<T>(
      {required String url,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? body,
      Map<String, dynamic>? params,
      T Function(dynamic)? callback,
      bool withoutHeader = false,
      String attribute = "data"}) async {
    // await getBeaseUrl();
    if (body != null) {
      body.removeWhere(
        (key, value) => body[key] == null || body[key] == "",
      );
      log.white("------ body for this req. -----");
      Map<String, String> buildBody =
          body.map((key, value) => MapEntry(key, value.toString()));
      log.white(jsonEncode(buildBody));
    }
    if (params != null) {
      params.removeWhere(
        (key, value) => params[key] == null || params[key] == "",
      );
    }
    if (headers != null) {
      if (!withoutHeader) headers.addAll(_header());
      headers.removeWhere(
          (key, value) => headers![key] == null || headers[key] == "");
    } else {
      if (!withoutHeader) headers = _header();
    }

    try {
      Response response = await _dio.post(
        url.startsWith("http") ? url : "$BASE_URL/$url",
        data: withoutHeader ? body : FormData.fromMap(body ?? {}),
        onSendProgress: (received, total) {
          onSingleReceive.add((received / total) - 0.05);
          //  print((received / total * 100).toStringAsFixed(0) + "%");
        },
        queryParameters: params,
        options: Options(
          sendTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 5000),
          contentType:
              "multipart/form-data; boundary=<calculated when request is sent>",
          headers: headers,
        ),
      );

      if (response.data is! Map) {
        response.data = {
          "message": kDebugMode
              ? response.data.toString()
              // : "sorry_Something_went_wrong".tr()
              : "sorry_Something_went_wrong"
        };
        response.statusCode = 500;
        log.red("\x1B[37m------ Current Error Response -----\x1B[0m");
        log.red("\x1B[31m${response.data}\x1B[0m");
        throw DioError(
          requestOptions: response.requestOptions,
          response: response,
          // type: DioErrorType.response,
        );
      }
      return CustomResponse<T>(
        success: true,
        statusCode: 200,
        errType: null,
        msg: response.data["message"] ?? "Your request completed succesfully",
        response: response,
        data: callback == null
            ? null
            : objectFromJson<T>(callback, response, attribute: attribute),
      );
    } on DioError catch (err) {
      return handleServerError(err);
    }
  }

  // ------- POST delete TO SERVER -------//
  Future<CustomResponse<T>> deleteFromServer<T>(
      {required String url,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? body,
      T Function(dynamic)? callback,
      Map<String, dynamic>? params,
      String attribute = "data"}) async {
    // await getBeaseUrl();
    // remove nulls from body
    if (body != null) {
      body.removeWhere(
        (key, value) => body[key] == null || body[key] == "",
      );
    }
    if (params != null) {
      params.removeWhere(
        (key, value) => params[key] == null || params[key] == "",
      );
    }
    // add stander header
    if (headers != null) {
      headers.addAll(_header());
      headers.removeWhere(
          (key, value) => headers![key] == null || headers[key] == "");
    } else {
      headers = _header();
    }

    try {
      Response response = await _dio.delete(
        "$BASE_URL/$url",
        data: FormData.fromMap(body ?? {}),
        queryParameters: params,
        options: Options(
          headers: headers,
          sendTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 5000),
        ),
      );

      return CustomResponse<T>(
        success: true,
        statusCode: 200,
        errType: null,
        msg: response.data["message"] ?? "Your request completed succesfully",
        response: response,
        data: callback == null
            ? null
            : objectFromJson<T>(callback, response, attribute: attribute),
      );
    } on DioError catch (err) {
      return handleServerError(err);
    }
  }

  // ------- PUT DATA TO SERVER -------//
  Future<CustomResponse<T>> putToServer<T>({
    required String url,
    Map<String, dynamic>? headers,
    T Function(dynamic)? callback,
    Map<String, dynamic>? body,
  }) async {
    // await getBeaseUrl();
    // remove nulls from body
    if (body != null) {
      body.removeWhere(
        (key, value) => body[key] == null || body[key] == "",
      );
    }
    // add stander header
    if (headers != null) {
      headers.addAll(_header());
      headers.removeWhere(
          (key, value) => headers![key] == null || headers[key] == "");
    } else {
      headers = _header();
    }

    try {
      Response response = await _dio.put(
        "$BASE_URL/$url",
        data: body,
        // FormData.fromMap(body ?? {}),
        options: Options(
          headers: headers,
          sendTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 5000),
        ),
      );

      return CustomResponse<T>(
        success: true,
        statusCode: 200,
        errType: null,
        msg: response.data["message"] ?? "Your request completed succesfully",
        response: response,
        data: callback == null ? null : objectFromJson<T>(callback, response),
      );
    } on DioError catch (err) {
      return handleServerError(err);
    } catch (e) {
      final option = RequestOptions(path: "$BASE_URL/$url");
      return handleServerError(DioError(
        requestOptions: option,
        response: Response(
          requestOptions: option,
          // data: {"message": "server_error_please_try_again_later".tr()},
          data: {"message": "server_error_please_try_again_later"},
        ),
        // type: DioErrorType.other,
      ));
    }
  }

  T objectFromJson<T>(T Function(dynamic) callback, Response response,
      {String? attribute}) {
    try {
      if (response.data != null) {
        if (attribute == "") return callback(response.data);
        if (response.data[attribute ?? "data"] != null)
          return callback(response.data[attribute ?? "data"]);
      }
      return callback(T is List ? <T>[] : <String, dynamic>{});
    } catch (e) {
      response.data = {
        // "message": kDebugMode ? e.toString() : "sorry_Something_went_wrong".tr()
        "message": kDebugMode ? e.toString() : "sorry_Something_went_wrong"
      };
      response.statusCode = 500;
      log.red("\x1B[37m------ Current Error Response -----\x1B[0m");
      log.red("\x1B[31m${response.data}\x1B[0m");
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        // type: DioErrorType.response,
      );
    }
  }

  // ------ GET DATA FROM SERVER -------//
  Future<CustomResponse<T>> getFromServer<T>(
      {required String url,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? params,
      T Function(dynamic)? callback,
      String? attribute,
      bool withoutHeader = false}) async {
    // await getBeaseUrl();

    // add stander header
    if (!withoutHeader) {
      if (headers != null) {
        if (!withoutHeader) headers.addAll(_header());
        headers.removeWhere((key, value) => value == null || value == "");
      } else {
        if (!withoutHeader) headers = _header();
      }
    }
    // remove nulls from params
    if (params != null) {
      params.removeWhere(
          (key, value) => params[key] == null || params[key] == "");
    }

    try {
      Response response = await _dio.get(
        url.startsWith("http") ? url : "$BASE_URL/$url",
        options: Options(
          headers: headers,
          sendTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 5000),
        ),
        queryParameters: params,
      );

      return CustomResponse<T>(
        success: true,
        statusCode: 200,
        errType: null,
        msg: (response.data["message"] ?? "Your request completed succesfully")
            .toString(),
        response: response,
        data: callback == null
            ? null
            : objectFromJson<T>(callback, response, attribute: attribute),
      );
    } on DioError catch (err) {
      return handleServerError(err);
    } catch (e) {
      final option = RequestOptions(path: "$BASE_URL/$url");
      return handleServerError(DioError(
        requestOptions: option,
        response: Response(
          requestOptions: option,
          // data: {"message": "server_error_please_try_again_later".tr()},
          data: {"message": "server_error_please_try_again_later"},
        ),
        // type: DioErrorType.other,
      ));
    }
  }

  // ------ Download DATA FROM SERVER ------- //

  Future<CustomResponse> downloadFromServer({
    required String url,
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    // await getBeaseUrl();
    // add stander header
    if (headers != null) {
      headers.addAll(_header());
      headers.removeWhere(
          (key, value) => headers![key] == null || headers[key] == "");
    } else {
      headers = _header();
    }

    try {
      Response response =
          await _dio.download(url, path, onReceiveProgress: (received, total) {
        onSingleReceive.add((received / total));
      });
      return CustomResponse(
        success: true,
        statusCode: 200,
        errType: null,
        msg: "Your request completed succesfully",
        response: response,
      );
    } on DioError catch (err) {
      return handleServerError(err);
    }
  }

  // -------- HANDLE ERROR ---------//
  CustomResponse<T> handleServerError<T>(DioError err) {
    if (err.type == DioErrorType.badResponse) {
      if (err.response!.data.toString().contains("DOCTYPE") ||
          err.response!.data.toString().contains("<script>") ||
          err.response!.data["exception"] != null) {
        // firebaseCrashlytics.apiRecordError(
        //   err.response?.data,
        //   err.stackTrace ?? StackTrace.empty,
        //   "${err.requestOptions.path} (${err.requestOptions.method})",
        // );
        // if (kDebugMode) FlashHelper.errorBar(message: "${err.response!.data}");
        return CustomResponse(
          success: false,
          errType: 1,
          statusCode: err.response!.statusCode ?? 500,
          msg: kDebugMode
              ? "${err.response!.data}"
              // : "server_error_please_try_again_later".tr(),
              : "server_error_please_try_again_later",
          response: null,
        );
      }
      if (err.response!.statusCode == 401) {
        return CustomResponse(
          success: false,
          statusCode: err.response?.statusCode ?? 401,
          errType: 3,
          msg: err.response?.data["message"] ?? '',
          response: err.response,
        );
      }
      try {
        return CustomResponse(
          success: false,
          statusCode: err.response?.statusCode ?? 500,
          errType: 2,
          msg: (err.response!.data["errors"] as Map).values.first.first,
          response: err.response,
        );
      } catch (e) {
        return CustomResponse(
          success: false,
          statusCode: err.response?.statusCode ?? 500,
          errType: 2,
          msg: err.response?.data["message"],
          response: err.response,
        );
      }
    } else if (err.type == DioErrorType.receiveTimeout ||
        err.type == DioErrorType.sendTimeout) {
      return CustomResponse(
        success: false,
        statusCode: err.response?.statusCode ?? 500,
        errType: 0,
        // msg: "poor_connection_check_the_quality_of_the_internet".tr(),
        msg: "poor_connection_check_the_quality_of_the_internet",
        response: null,
      );
    } else {
      if (err.response == null) {
        return CustomResponse(
          success: false,
          statusCode: 402,
          errType: 0,
          // msg: "no_connection_check_the_quality_of_the_internet".tr(),
          msg: "no_connection_check_the_quality_of_the_internet",
          response: null,
        );
      }
      // firebaseCrashlytics.apiRecordError(
      //   err.response?.data,
      //   err.stackTrace ?? StackTrace.empty,
      //   "${err.requestOptions.path} (${err.requestOptions.method})",
      // );
      return CustomResponse(
        success: false,
        statusCode: 402,
        errType: 1,
        // msg: "server_error_please_try_again_later".tr(),
        msg: "server_error_please_try_again_later",
        response: null,
      );
    }
  }

  final Map<String, String> _cashedImage = {};
  final _imageDio = Dio();

  Future<String?> imageBase64(String url) async {
    if (_cashedImage.length >= 70) {
      _cashedImage.clear();
    }
    if (_cashedImage.containsKey(url.split("/").last))
      return _cashedImage[url.split("/").last]!;
    final result = await _imageDio.get(url,
        options: Options(responseType: ResponseType.bytes));
    if (result.statusCode == 200) {
      // final image = decodeImage(result.data);
      // if (image == null) return null;
      // final resizedImage = copyResize(image, height: height?.toInt() ?? 50, width: width?.toInt() ?? 50);
      // final imageEncoder = base64Encode(encodePng(resizedImage));
      final imageEncoder = base64Encode(result.data);
      _cashedImage
          .addAll({result.requestOptions.path.split("/").last: imageEncoder});
      return imageEncoder;
    } else {
      return null;
    }
  }

// Future<String?> getBeaseUrl() async {
//   const String url = "https://davina-24a38-default-rtdb.firebaseio.com/"
//       // "${kDebugMode ? "test_" : ""}"
//       "base_url.json";
//   try {
//     if (BASE_URL != null) return BASE_URL;
//     final result = await _dio.get(url,
//         options: Options(
//             headers: {"Accept": "application/json"},
//             sendTimeout: 5000,
//             receiveTimeout: 5000));
//     if (result.data != null) {
//       BASE_URL = result.data;
//       return BASE_URL;
//     } else {
//       throw DioError(
//         requestOptions: result.requestOptions,
//         response: Response(
//           requestOptions: result.requestOptions,
//           data: {"message": "لم نستتطع الاتصال بالسيرفر"},
//         ),
//         type: DioErrorType.response,
//       );
//     }
//   } catch (e) {
//     final requestOptions = RequestOptions(path: url);
//     throw DioError(
//       requestOptions: requestOptions,
//       response: Response(
//         requestOptions: requestOptions,
//         data: {"message": "حدث خطآ عند الاتصال بالسيرفر"},
//       ),
//       type: DioErrorType.response,
//     );
//   }
// }

}

class CustomApiInterceptor extends Interceptor {
  LoggerDebug log;

  CustomApiInterceptor(this.log);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log.red("\x1B[37m------ Current Error Response -----\x1B[0m");
    log.red("\x1B[31m${err.response?.data}\x1B[0m");
    return super.onError(err, handler);
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    log.green("------ Current Response ------");
    log.green(jsonEncode(response.data));
    return super.onResponse(response, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log.cyan("------ Current Request Parameters Data -----");
    log.cyan("${options.queryParameters}");
    log.yellow("------ Current Request Headers -----");
    log.yellow("${options.headers}");
    log.green("------ Current Request Path -----");
    log.green(
        "${options.path} ${LogColors.red}API METHOD : (${options.method})${LogColors.reset}");
    return super.onRequest(options, handler);
  }
}

class CustomResponse<T> {
  bool success;
  int? errType;

  // 0 => network error
  // 1 => error from the server
  // 3 => unAuth
  // 2 => other error

  String msg;
  int statusCode;
  Response? response;
  T? data;

  CustomResponse({
    this.success = false,
    this.errType = 0,
    this.msg = "",
    this.statusCode = 0,
    this.response,
    this.data,
  });
}

class CustomError {
  int? type;
  String? msg;
  dynamic error;

  CustomError({
    this.type,
    this.msg,
    this.error,
  });
}
