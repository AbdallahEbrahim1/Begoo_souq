part of 'bloc.dart';

class EditProfileStates {}

class EditProfileLoadingState extends EditProfileStates {}

class EditProfileSuccessState extends EditProfileStates {
  String msg;

  EditProfileSuccessState({
    required this.msg,
  });
}

class EditProfileFailedState extends EditProfileStates {
  String msg;

  EditProfileFailedState({required this.msg});
}
