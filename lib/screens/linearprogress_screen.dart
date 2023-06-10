import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/theme/app_theme.dart';

class LinearProgressViewScreen extends StatefulWidget {
  const LinearProgressViewScreen({super.key});
  _LinearProgressViewScreenState createState() =>
      _LinearProgressViewScreenState();
}

class _LinearProgressViewScreenState extends State<LinearProgressViewScreen> {
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
          title: Text('Flutter Linear Progress'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.7,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(AppTheme.primary),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(AppTheme.primary),
                      backgroundColor: Colors.blueGrey,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.blueGrey,
                        color: AppTheme.primary)),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      backgroundColor: Colors.blueGrey,
                      color: AppTheme.primary,
                      minHeight: 10,
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Linear.jpeg'),
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
