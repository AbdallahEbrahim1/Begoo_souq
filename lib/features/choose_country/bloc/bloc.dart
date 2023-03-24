import 'dart:async';

import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:bloc/bloc.dart';

import 'model.dart';

part 'events.dart';
part 'states.dart';

class CurrenciesBloc extends Bloc<CurrenciesEvents, CurrenciesStates> {
  final ServerGate dio;

  CurrenciesBloc(this.dio) : super(CurrenciesStates()) {
    on<GetCurrenciesEvent>(_getCurrencies);
  }

  Future _getCurrencies(
      GetCurrenciesEvent event, Emitter<CurrenciesStates> emit) async {
    emit(CurrenciesLoadingState());
    final response = await dio.getFromServer(url: 'api/currencies');
    if (response.success) {
      final data = CurrenciesModel.fromJson(response.response!.data);
      emit(CurrenciesSuccessState(msg: response.msg, data: data));
    } else {
      emit(CurrenciesFailedState(msg: response.msg));
    }
  }
}
