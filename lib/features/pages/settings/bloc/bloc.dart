import 'package:begoo_souq/features/pages/settings/bloc/model.dart';
import 'package:begoo_souq/network/local/cache_helper.dart';
import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:bloc/bloc.dart';

part 'event.dart';
part 'states.dart';

class SettingsBloc extends Bloc<SettingsEvents, SettingsStates> {
  final ServerGate dio;

  SettingsBloc(this.dio) : super(SettingsLoadingState()) {
    on<GetSettingsEvent>(_getSettings);
  }

  Future _getSettings(
      GetSettingsEvent event, Emitter<SettingsStates> emit) async {
    emit(SettingsLoadingState());
    String token = CacheHelper.getToken();
    final response = await dio.getFromServer(
        url: 'api/setting', headers: {'Auth': token, 'Currency': '1'});
    if (response.success) {
      final model = SettingsModel.fromJson(response.response!.data);
      emit(SettingsSuccessState(msg: response.msg, model: model));
    } else {
      emit(SettingsFailedState(msg: response.msg));
    }
  }
}
