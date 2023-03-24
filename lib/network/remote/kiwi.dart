import 'package:begoo_souq/features/choose_country/bloc/bloc.dart';
import 'package:begoo_souq/features/login/bloc/bloc.dart';
import 'package:begoo_souq/features/register/bloc/bloc.dart';
import 'package:begoo_souq/network/remote/server_gate.dart';
import 'package:kiwi/kiwi.dart';

void initKiwi() {
  KiwiContainer container = KiwiContainer();
  container.registerSingleton((container) => ServerGate.i);

  container.registerFactory(
      (container) => LoginBloc(container.resolve<ServerGate>()));
  container.registerFactory(
      (container) => CurrenciesBloc(container.resolve<ServerGate>()));
  container.registerFactory(
      (container) => RegisterBloc(container.resolve<ServerGate>()));
}
