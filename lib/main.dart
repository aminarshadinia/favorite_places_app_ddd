import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/injectable.dart';
import 'package:sample_app/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}


