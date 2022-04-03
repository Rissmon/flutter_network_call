import 'package:flutter_sample/data/network/network_service.dart';
import 'package:flutter_sample/data/repository/about_country.dart';
import 'package:flutter_sample/view/about_country/bloc/about_country_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

locate<T extends Object>({String? instanceName}) => instanceName == null
    ? getIt.get<T>()
    : getIt.get<T>(instanceName: instanceName);

Future<void> setup() async {
  setupData();
  setupBloc();
}

void setupBloc() {
  getIt.registerFactory(
      () => AboutCountryBloc(locate<AboutCountryRepository>()));
}

void setupData() {
  getIt.registerFactory(() => NetworkService());
  NetworkService networkManager = locate<NetworkService>();
  getIt.registerFactory<AboutCountryRepository>(
      () => AboutCountryRepositoryImpl(networkManager));
}
