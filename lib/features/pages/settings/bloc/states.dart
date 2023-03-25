part of 'bloc.dart';

class SettingsStates {}

class SettingsLoadingState extends SettingsStates {}

class SettingsFailedState extends SettingsStates {
  String msg;

  SettingsFailedState({required this.msg});
}

class SettingsSuccessState extends SettingsStates {
  SettingsModel model;
  String msg;
  SettingsSuccessState({required this.msg, required this.model});
}
