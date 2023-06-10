import 'package:flutter/material.dart';

class ButtonViewScreen extends StatefulWidget {
  const ButtonViewScreen({super.key});
  ButtonViewScreenState createState() => ButtonViewScreenState();
}

class ButtonViewScreenState extends State<ButtonViewScreen> {
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
          title: Text('Flutter Button'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  color: Color(0xffffffff),
                  margin: const EdgeInsets.all(10),
                  child: TextButton(
                    child: Text("Boton Texto"),
                    onPressed: () {},
                  ),
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(
                      child: Text("Elevated Button"),
                      onPressed: () {},
                    )),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: OutlinedButton(
                      child: Text("Outlined Button"),
                      onPressed: () {},
                    )),
                FloatingActionButton(
                  child: Icon(Icons.save),
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    setState(() {});
                  },
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 50,
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/button.jpeg'),
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
