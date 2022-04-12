import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/injectable.dart';

import 'package:sample_app/presentation/core/app_widget.dart';

void main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
}
