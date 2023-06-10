import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/router/app_routes.dart';
import 'package:fluttercomponentes6w/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.ligthTheme,
    );
  }
}
