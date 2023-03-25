part of 'bloc.dart';

class ChangePasswordStates {}

class ChangePasswordLoadingState extends ChangePasswordStates {}

class ChangePasswordSuccessState extends ChangePasswordStates {
  final String msg;

  ChangePasswordSuccessState({required this.msg});
}

class ChangePasswordFailedState extends ChangePasswordStates {
  final String msg;

  ChangePasswordFailedState({required this.msg});
}
