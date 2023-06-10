import 'package:flutter/material.dart';

class TabViewScreen extends StatefulWidget {
  const TabViewScreen({super.key});
  _TabViewScreenState createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen> {
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
          title: Text('Flutter TabBar'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Aqui se muestra el"),
                  Text("Ejemplo de un tabBar y TabView"),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/tabview.jpeg'),
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
