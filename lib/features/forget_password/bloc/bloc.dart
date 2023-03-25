import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'states.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordStates> {
  final ServerGate dio;
  ForgetPasswordBloc(this.dio) : super(ForgetPasswordStates()) {
    on<ForgetPasswordEvent>(_forgetPassword);
  }

  final TextEditingController mobileController = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final mobileFocus = FocusNode();
  final buttonLoginFocus = FocusNode();

  Future<void> _forgetPassword(
      ForgetPasswordEvent event, Emitter<ForgetPasswordStates> emit) async {
    emit(ForgetPasswordLoadingState());
    final response = await dio.sendToServer(
      url: "api/forget_password",
      body: {
        "code": '+965',
        "phone": mobileController.text,
      },
    );
    if (response.success) {
      emit(ForgetPasswordSuccessState(msg: response.msg));
    } else {
      emit(ForgetPasswordFailedState(msg: response.msg));
    }
  }
}
