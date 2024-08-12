import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/internal/pages.dart';
import 'package:gojo_news/internal/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/boot',
      getPages: AppRoutes.routes,
      theme: AppTheme.theme,
    );
  }
}
