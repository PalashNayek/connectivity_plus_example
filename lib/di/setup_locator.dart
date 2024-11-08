import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../utils/connectivity_service.dart';
import '../view_models/connectivity_view_model.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
  getIt.registerFactory(() => ConnectivityViewModel(getIt<ConnectivityService>()));
}
