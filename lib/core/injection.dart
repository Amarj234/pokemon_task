import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../data/repositories/pokemon_repository.dart';
import '../data/repositories/pokemon_repository_impl.dart';
import '../data/service/api_service.dart';
import '../screen/bloc/pokemon_bloc.dart';
import '../utils/constants.dart';

final sl = GetIt.instance;

void init() {
  // Dio base client
  sl.registerLazySingleton(() => Dio(BaseOptions(baseUrl: baseUrl)));

  // API Service
  sl.registerLazySingleton(() => ApiService(sl<Dio>()));

  // Repository binding (IMPORTANT!)
  sl.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(sl<ApiService>()),
  );

  // Bloc
  sl.registerFactory(() => PokemonBloc(repository: sl()));
}
