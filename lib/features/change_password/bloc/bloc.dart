import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'states.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvents, ChangePasswordStates> {
  final ServerGate dio;

  ChangePasswordBloc(this.dio) : super(ChangePasswordStates()) {
    on<ChangePasswordEvent>(_changePassword);
  }

  final passwordController = TextEditingController();
  final oldPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final key = GlobalKey<FormState>();
  final passwordFocus = FocusNode();
  final oldPasswordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final buttonUpdatePasswordFocus = FocusNode();

  Future<void> _changePassword(
      ChangePasswordEvent event, Emitter<ChangePasswordStates> emit) async {
    emit(ChangePasswordLoadingState());
    final response = await dio.sendToServer(
      url: "api/change_password",
      body: {
        "old_password": oldPasswordController.text,
        "password": passwordController.text,
        "password_confirmation": confirmPasswordController.text,
      },
    );
    if (response.success) {
      emit(ChangePasswordSuccessState(msg: response.msg));
    } else {
      emit(ChangePasswordFailedState(msg: response.msg));
    }
  }
}
