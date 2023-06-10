import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/router/app_routes.dart';
import 'package:fluttercomponentes6w/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes Flutter'),
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
            title: Text(menuOptions[i].name),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[i].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
