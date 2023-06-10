import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});
  _SnackBarScreenState createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
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
          title: Text('Flutter SnackBar'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Mensaje"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! codesinsider.com'),
                            backgroundColor: Colors.green,
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Padding"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! i am snackbar'),
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.all(20),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Shape"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Hi! i am snackbar'),
                              backgroundColor: Colors.green,
                              shape: StadiumBorder()));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Behavior"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! i am snackbar'),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Width"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Hi! i am snackbar'),
                              backgroundColor: Colors.green,
                              behavior: SnackBarBehavior.floating,
                              width: 200));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Margin"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! i am snackbar'),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(50),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Elevation"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! i am snackbar'),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(50),
                            elevation: 30,
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Duration"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! i am snackbar'),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(milliseconds: 10000),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar Action"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! i am snackbar'),
                            backgroundColor: Colors.grey,
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: 'Dismiss',
                              disabledTextColor: Colors.white,
                              textColor: Colors.deepOrange,
                              onPressed: () {
                                //Do whatever you want
                              },
                            ),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar onVisible"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hi! i am snackbar'),
                            backgroundColor: Colors.grey,
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: 'Dismiss',
                              disabledTextColor: Colors.white,
                              textColor: Colors.deepOrange,
                              onPressed: () {
                                //Do whatever you want
                              },
                            ),
                            onVisible: () {},
                          ));
                        }),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/snackbar.jpeg'),
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
