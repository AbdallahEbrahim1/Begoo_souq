import 'package:begoo_souq/features/login/bloc/model.dart';
import 'package:begoo_souq/network/local/cache_helper.dart';
import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'states.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final ServerGate dio;

  LoginBloc(this.dio) : super(LoginStates()) {
    on<LoginEvent>(_login);
  }

  final key = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final mobileFocus = FocusNode();
  final passwordFocus = FocusNode();
  final buttonLoginFocus = FocusNode();

  Future<void> _login(LoginEvent event, Emitter<LoginStates> emit) async {
    emit(LoginLoadingState());

    final response = await dio.sendToServer(
      url: "api/login",
      body: {
        "code": '+965',
        "phone": phoneController.text,
        'password': passwordController.text,
      },
    );
    if (response.success) {
      CacheHelper.clear();
      UserData model = UserData.fromJson(response.response!.data['data']);
      CacheHelper.saveToken(model.authorization);
      CacheHelper.savePhone(model.phone);
      CacheHelper.saveName(model.name);
      emit(LoginSuccessState(msg: response.msg));
    } else {
      emit(LoginFailedState(msg: response.msg));
    }
  }
}
