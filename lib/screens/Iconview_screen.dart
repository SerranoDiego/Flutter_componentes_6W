import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/theme/app_theme.dart';

class IconViewScreen extends StatefulWidget {
  const IconViewScreen({super.key});
  _IconViewScreenState createState() => _IconViewScreenState();
}

class _IconViewScreenState extends State<IconViewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.checklist)),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter Iconos'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //cuantas columnas va a tener mi grid
                  crossAxisCount: 4,
                  //El espaciado entre las columnas
                  crossAxisSpacing: 2,
                  //espaciado entre filas
                  mainAxisSpacing: 2,
                  //alto de cada columna
                  mainAxisExtent: 90),
              children: [
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.search),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.home),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.menu),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.close),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.settings),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.done),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.favorite),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.add),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.delete),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.star),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.cancel),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.done),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.refresh),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.login),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.apps),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.remove),
                )
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons.jpeg'),
                  Text("Codigo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
