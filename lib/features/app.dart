import 'package:flutter/material.dart';

import '../core/values/values.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
