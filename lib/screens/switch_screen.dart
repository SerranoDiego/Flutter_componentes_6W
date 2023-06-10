import 'package:flutter/material.dart';

class SwtichViewScreen extends StatefulWidget {
  const SwtichViewScreen({super.key});
  _SwtichViewScreenState createState() => _SwtichViewScreenState();
}

class _SwtichViewScreenState extends State<SwtichViewScreen> {
  bool _value = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
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
          title: Text('Switch'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value2,
                      onChanged: (value) {
                        setState(() {
                          _value2 = value;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value3,
                      onChanged: (value) {
                        setState(() {
                          _value3 = value;
                        });
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.deepOrange,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value4,
                      onChanged: (value) {
                        setState(() {
                          _value4 = value;
                        });
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.deepOrange,
                      inactiveThumbColor: Colors.red,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value5,
                      onChanged: (value) {
                        setState(() {
                          _value5 = value;
                        });
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.deepOrange,
                      inactiveTrackColor: Colors.red[100],
                      inactiveThumbColor: Colors.red,
                    ),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/switch.jpeg"),
                  Text("Codigo"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
