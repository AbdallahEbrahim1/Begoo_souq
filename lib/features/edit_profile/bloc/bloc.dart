import 'package:begoo_souq/network/local/cache_helper.dart';
import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'states.dart';

class EditProfileBloc extends Bloc<EditProfileEvents, EditProfileStates> {
  final ServerGate dio;

  EditProfileBloc(this.dio) : super(EditProfileStates()) {
    on<EditProfileEvent>(_editProfile);
  }

  final nameController = TextEditingController(text: CacheHelper.getName());
  final emailController = TextEditingController(text: CacheHelper.getEmail());
  final mobileController = TextEditingController(text: CacheHelper.getPhone());
  final key = GlobalKey<FormState>();
  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final mobileFocus = FocusNode();
  final buttonUpdateFocusNode = FocusNode();
  int groupValueGender = -1;
  Future<void> _editProfile(
      EditProfileEvent event, Emitter<EditProfileStates> emit) async {
    emit(EditProfileLoadingState());
    String token = CacheHelper.getToken();
    final response = await dio.sendToServer(
      url: "api/profile",
      headers: {
        'Auth': token,
        'Currency': '1',
      },
      body: {
        'name': nameController.text,
        'gender': 'male',
        'email': emailController.text,
        'code': '+965',
        'phone': mobileController.text
      },
    );
    if (response.success) {
      emit(EditProfileSuccessState(
        msg: response.msg,
      ));
    } else {
      emit(EditProfileFailedState(msg: response.msg));
    }
  }
}
