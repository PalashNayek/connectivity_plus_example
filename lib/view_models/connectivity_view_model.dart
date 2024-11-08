import 'package:flutter/material.dart';

import '../utils/connectivity_service.dart';

class ConnectivityViewModel extends ChangeNotifier {
  final ConnectivityService _connectivityService;
  NetworkStatus _networkStatus = NetworkStatus.offline;

  ConnectivityViewModel(this._connectivityService) {
    _connectivityService.networkStatus.listen((status) {
      _networkStatus = status;
      notifyListeners();
    });
  }

  NetworkStatus get networkStatus => _networkStatus;
}
