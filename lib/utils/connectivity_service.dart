import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkStatus { online, offline }

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  Stream<NetworkStatus> get networkStatus async* {
    yield* _connectivity.onConnectivityChanged.map((ConnectivityResult result) {
      return result == ConnectivityResult.none ? NetworkStatus.offline : NetworkStatus.online;
    });
  }
}
