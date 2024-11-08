import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../utils/connectivity_service.dart';
import '../view_models/connectivity_view_model.dart';

class ConnectivityStatusView extends StatelessWidget {
  const ConnectivityStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GetIt.I<ConnectivityViewModel>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Connectivity Status')),
        body: Center(
          child: Consumer<ConnectivityViewModel>(
            builder: (context, viewModel, child) {
              return Text(
                viewModel.networkStatus == NetworkStatus.online ? 'Online' : 'Offline',
                style: TextStyle(
                  color: viewModel.networkStatus == NetworkStatus.online ? Colors.green : Colors.red,
                  fontSize: 24,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
