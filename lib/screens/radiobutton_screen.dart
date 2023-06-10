//RadioButtonScreen
import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/theme/app_theme.dart';

enum ProductTypeEnum { Donwloadable, Deliverable }

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});
  _RadioButtonScreenState createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  ProductTypeEnum? _ProductTypeEnum;

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
          title: Text('Flutter RadioButton'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: [
                Radio<ProductTypeEnum>(
                    value: ProductTypeEnum.Deliverable,
                    groupValue: _ProductTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _ProductTypeEnum = val;
                      });
                    }),
                Radio<ProductTypeEnum>(
                    value: ProductTypeEnum.Donwloadable,
                    groupValue: _ProductTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _ProductTypeEnum = val;
                      });
                    }),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/radiobutton.jpeg'),
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
