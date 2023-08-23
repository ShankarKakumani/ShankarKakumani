import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'common/injection.dart';
import 'my_app.dart';

void main() {
  setPathUrlStrategy();
  configureDependencyInjection();
  runApp(const MyApp());
}
