import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  //Seteando las variables para mandar a llamar ruta, icon, nombre y pantalla
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions(
      //Obteniendo las variables que mande a llamar anteriormente
      {
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
