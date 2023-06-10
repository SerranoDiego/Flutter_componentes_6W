import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/theme/app_theme.dart';

class CardViewScreen extends StatefulWidget {
  const CardViewScreen({super.key});
  _CardViewScreen createState() => _CardViewScreen();
}

class _CardViewScreen extends State<CardViewScreen> {
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
          title: Text('Flutter CardScreen'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Card con color de fondo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: AppTheme.primary,
                  ),
                ),
                Container(
                    child: Card(
                  child: ListTile(
                    title: Text("Card elevado"),
                  ),
                  elevation: 8,
                )),
                Container(
                    child: Card(
                  child: ListTile(
                    title: Text("Card con sombra"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                )),
                Container(
                    child: Card(
                  child: ListTile(
                    title: Text("Card Shape"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                )),
                Container(
                    child: Card(
                  child: ListTile(
                    //leading: Icon(Icons.music_note),
                    title: Text("Card Margin"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                )),
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: ListTile(
                      title: Text("Card height and width"),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(20),
                  ),
                ),
                Container(
                    child: Card(
                  child: ListTile(
                    title: Text("Rounded Corners"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                )),
                Container(
                    child: Card(
                  child: ListTile(
                    title: Text("Border and border color"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                )),
                Container(
                    child: Card(
                  child: Container(
                    height: 160,
                    width: 160,
                    child: Center(
                      child: ListTile(
                        title: Text("Circular Card"),
                      ),
                    ),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: CircleBorder(
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/card.jpeg'),
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
