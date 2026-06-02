import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:velo/core/services/api_service.dart';

final getIt = GetIt.instance;

void serverLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
}
