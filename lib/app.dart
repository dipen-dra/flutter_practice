import 'package:flutter/material.dart';
import 'view/dashboard_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Dashboard',
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
