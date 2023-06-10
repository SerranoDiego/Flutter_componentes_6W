import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});
  _AlertDialogScreenState createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
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
          title: Text('Flutter AlertDialog'),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _showDialog(context);
                  },
                  child: Text("Show Dialog"),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/alertdialog.png'),
                  Text("codigo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Bienvenido'),
            content: Text('Quieres Aprender flutter'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'SI',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'NO',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
