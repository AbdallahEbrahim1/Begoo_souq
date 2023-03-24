part of 'bloc.dart';

class CurrenciesStates {}

class CurrenciesLoadingState extends CurrenciesStates {}

class CurrenciesSuccessState extends CurrenciesStates {
  CurrenciesModel data;
  String msg;

  CurrenciesSuccessState({required this.msg, required this.data});
}

class CurrenciesFailedState extends CurrenciesStates {
  String msg;

  CurrenciesFailedState({required this.msg});
}
