import 'package:flutter/material.dart';
import 'package:gojo_news/internal/application.dart';
import 'package:gojo_news/internal/back4app_initialize.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Back4app.initParse();
  runApp(const Application());
}
