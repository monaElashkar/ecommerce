import 'package:ecommerce/config.dart';
import 'package:ecommerce/core/cache/shared_pref.dart';
import 'package:ecommerce/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  CacheHelper.init();
  configureDependencies();
  runApp(const MyApp());
}
