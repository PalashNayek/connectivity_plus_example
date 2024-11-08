import 'package:connectivity_plus_example/di/setup_locator.dart';
import 'package:connectivity_plus_example/screens/connectivity_status_view.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer Loading Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ConnectivityStatusView(),
    );
  }
}
