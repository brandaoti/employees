import 'package:flutter/material.dart';

import 'core/helpers/di.dart';
import 'features/app.dart';

void main() {
  dependencyInjection();
  runApp(const App());
}
