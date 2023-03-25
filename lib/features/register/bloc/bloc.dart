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
  Gender? groupValueGender = Gender.male;

  // int groupValueGender = -1;
  int? value;
  Future<void> _register(
      RegisterEvent event, Emitter<RegisterStates> emit) async {
    emit(RegisterLoadingState());

    final response = await dio.sendToServer(
      url: "api/register",
      body: {
        "name": nameController.text,
        "email": emailController.text,
        "code": '+965',
        "phone": mobileController.text,
        "password": passwordController.text,
        "password_confirmation": confirmPasswordController.text,
        "gender": groupValueGender.toString(),
      },
    );
    print(groupValueGender.toString());
    if (response.success) {
      emit(RegisterSuccessState(msg: response.msg));
    } else {
      emit(RegisterFailedState(msg: response.msg));
    }
  }
}

enum Gender {
  male,
  female,
}
//{
// "status":1,
// "message":"Registered successfully",
// "data":
// {
// "id":380,
// "name":"abdaallaah",
// "email":"abdaallaah@gmail.com",
// "code":"+965","phone":"11223344",
// "authorization":"$2y$10$2nXUbPZTwV.DBURJFMyOIemOVO0JQLk7TseaL7hlh3MfYjBFSa7bO",
// }
// }
