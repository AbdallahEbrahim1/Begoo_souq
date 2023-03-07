// import 'package:dio/dio.dart';
//
// class DioHelper {
//   static late Dio dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'https://linkalintest.com/bego/api/',
//         receiveDataWhenStatusError: true,
//         connectTimeout: 60000,
//         receiveTimeout: 60000,
//       ),
//     );
//   }
//
//   static Future<Response> getData({
//     required String url,
//     Map<String, dynamic>? query,
//   }) async {
//     dio.options.headers = {
//       'lang': 'en',
//       'Currency': '1',
//       'FirebaseToken': 'dfsdfsdfsdfsdasdsadsfdsfdsfdf',
//       'Platform': 'ios',
//       "Auth": "\$2y\$10\$0HkTz09Oaj1Cyoy0F15vfeiPAf6LUhhOHpGEFBA0PEZBsGDj1WBVy",
//     };
//     print('${dio.get(url, queryParameters: query)} MMMMMM');
//     return await dio.get(url, queryParameters: query);
//     // try {
//     //   return await dio.get(url, queryParameters: query);
//     // } on DioError catch (error) {
//     // Response response = error.error;
//     // return Future.value(response);
//     // }
//   }
// }
