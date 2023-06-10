import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/theme/app_theme.dart';

class TextButtonScreen extends StatefulWidget {
  const TextButtonScreen({super.key});
  _TextButtonScreenState createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
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
          title: Text('TextButton'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    child: TextButton(
                      child: Text("Boton de Texto"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton.icon(
                      icon: Icon(Icons.save),
                      label: Text("Guardar"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton style background color"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(AppTheme.primary),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton style"),
                      style: TextButton.styleFrom(primary: AppTheme.primary),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton foregroundColor(primary)"),
                      style: TextButton.styleFrom(
                        primary: AppTheme.primary,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton backgroundColor"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff1f91ed),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                      child: TextButton(
                    child: Text("Boton disabledColor(onSurface)"),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: AppTheme.primary,
                      onSurface: Colors.black,
                    ),
                    onPressed: null,
                  )),
                  Container(
                    child: TextButton(
                      child: Text("Boton side"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xffaf7eed),
                          side: BorderSide(color: AppTheme.primary, width: 1)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton elevado"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: AppTheme.primary,
                        side: BorderSide(color: AppTheme.primary, width: 1),
                        elevation: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton minimumSize"),
                      style: TextButton.styleFrom(
                        primary: Color(0xff4b4747),
                        backgroundColor: AppTheme.primary,
                        side: BorderSide(color: AppTheme.primary, width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton shadowColor"),
                      style: TextButton.styleFrom(
                        primary: Color(0xff0a0a0a),
                        backgroundColor: AppTheme.primary,
                        side: BorderSide(color: AppTheme.primary, width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: AppTheme.primary,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton shape"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: AppTheme.primary,
                        side: BorderSide(color: AppTheme.primary, width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: AppTheme.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton Borde circular"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: AppTheme.primary,
                        side: BorderSide(color: AppTheme.primary, width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: AppTheme.primary,
                        shape: CircleBorder(),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Botin padding (EdgeIsets.all())"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: AppTheme.primary,
                          side: BorderSide(color: AppTheme.primary, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: AppTheme.primary,
                          padding: EdgeInsets.only(
                              left: 60, right: 60, top: 15, bottom: 15)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton EdgeInsets.symmetric()"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: AppTheme.primary,
                          side: BorderSide(color: AppTheme.primary, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: AppTheme.primary,
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton textStyle"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: AppTheme.primary,
                          side: BorderSide(color: AppTheme.primary, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: AppTheme.primary,
                          shape: CircleBorder(),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50),
                          textStyle: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton Style()"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppTheme.primary),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.all<double>(20),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(100, 50)),
                          shadowColor: MaterialStateProperty.all<Color>(
                              AppTheme.primary),
                          shape: MaterialStateProperty.all<CircleBorder>(
                              CircleBorder()),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(30)),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic))),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton styleFrom()"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: AppTheme.primary,
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: AppTheme.primary,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                          textStyle: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      onPressed: () {},
                    ),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/textbutton.jpeg'),
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
