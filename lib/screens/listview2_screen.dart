import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  var options = const ["spiderman", "iron man", "hulk", "thor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("ListView Tipo 2")),
        ),
        body: ListView(
          children: [
            ...options
                .map((lista) => ListTile(
                    title: Text(lista),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                    onTap: () {}))
                .toList(),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
