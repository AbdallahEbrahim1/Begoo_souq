import 'package:begoo_souq/features/change_password/bloc/bloc.dart';
import 'package:begoo_souq/features/choose_country/bloc/bloc.dart';
import 'package:begoo_souq/features/edit_profile/bloc/bloc.dart';
import 'package:begoo_souq/features/forget_password/bloc/bloc.dart';
import 'package:begoo_souq/features/login/bloc/bloc.dart';
import 'package:begoo_souq/features/pages/settings/bloc/bloc.dart';
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
  container.registerFactory(
      (container) => ForgetPasswordBloc(container.resolve<ServerGate>()));
  container.registerFactory(
      (container) => ChangePasswordBloc(container.resolve<ServerGate>()));
  container.registerFactory(
      (container) => SettingsBloc(container.resolve<ServerGate>()));
  container.registerFactory(
      (container) => EditProfileBloc(container.resolve<ServerGate>()));
}
