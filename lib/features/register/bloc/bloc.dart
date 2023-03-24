import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  final ServerGate dio;

  RegisterBloc(this.dio) : super(RegisterStates()) {
    on<RegisterEvent>(_register);
  }
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final key = GlobalKey<FormState>();
  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final mobileFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final buttonRegisterFocusNode = FocusNode();
  int groupValueGender = -1;
  int? value;
  Future<void> _register(
      RegisterEvent event, Emitter<RegisterStates> emit) async {
    emit(RegisterLoadingState());

    final response = await dio.sendToServer(
      url: "api/register",
      body: {
        "name": nameController.text,
        "email": passwordController.text,
        "code": '+965',
        "phone": mobileController.text,
        "password": passwordController.text,
        "password_confirmation": confirmPasswordController.text,
        "gender": groupValueGender.toString(),
      },
    );
    if (response.success) {
      emit(RegisterSuccessState(msg: response.msg));
    } else {
      emit(RegisterFailedState(msg: response.msg));
    }
  }
}
