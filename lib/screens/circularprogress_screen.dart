import 'package:flutter/material.dart';

class CircularProgressScreen extends StatefulWidget {
  const CircularProgressScreen({super.key});
  _CircularProgressScreenState createState() => _CircularProgressScreenState();
}

class _CircularProgressScreenState extends State<CircularProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplo",
                icon: Icon(Icons.checklist),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Circular Progress'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      value: 0.8,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      value: 0.8,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.purple),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.purple,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.purple,
                      strokeWidth: 10,
                    ),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/circularprogress.jpeg'),
                  Text("codigo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
