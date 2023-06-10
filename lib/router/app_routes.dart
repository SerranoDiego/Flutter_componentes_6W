//Controlador para las rutas del proyecto
import 'package:flutter/material.dart';
import 'package:fluttercomponentes6w/models/menu_option.dart';
import 'package:fluttercomponentes6w/screens/home.dart';
//Importar las pantallas del proyecto
import 'package:fluttercomponentes6w/screens/screens.dart';
//Importar los modelos(menu) del proyecto
import 'package:fluttercomponentes6w/models/models.dart';

class AppRoutes {
  static const initialRoute = "home";
//Traemos las opciones de MenuOptions a partir de un map
  static var menuOptions = <MenuOptions>[
    //Aqui va todas las pantallas que utilizaremos en el proyecto
    MenuOptions(
        route: "ListView1",
        icon: Icons.remove,
        name: "ListView tipo 1",
        screen: ListView1Screen()),
    MenuOptions(
        route: "ListView2",
        icon: Icons.remove,
        name: "ListView tipo 2",
        screen: ListView2Screen()),
    MenuOptions(
        route: "TabView",
        icon: Icons.remove,
        name: "TabView",
        screen: TabViewScreen()),
    MenuOptions(
        route: "ButtonView",
        icon: Icons.remove,
        name: "Button View",
        screen: ButtonViewScreen()),
    MenuOptions(
        route: "GridView",
        icon: Icons.remove,
        name: "Grid View",
        screen: const GridViewScreen()),
    MenuOptions(
        route: "CardView",
        icon: Icons.remove,
        name: "Card",
        screen: const CardViewScreen()),
    MenuOptions(
        route: "IconView",
        icon: Icons.remove,
        name: "Iconos",
        screen: const IconViewScreen()),
    MenuOptions(
        route: "AlertDialog",
        icon: Icons.remove,
        name: "AlertDialog",
        screen: const AlertDialogScreen()),
    MenuOptions(
        route: "Checkboxview",
        icon: Icons.remove,
        name: "Checkbox",
        screen: const CheckboxScreen()),
    MenuOptions(
        route: "LinearProgressView",
        icon: Icons.remove,
        name: "LinearProgress",
        screen: const LinearProgressViewScreen()),
    MenuOptions(
        route: "Circular Progress",
        icon: Icons.remove,
        name: "Circular Progress",
        screen: CircularProgressScreen()),
    MenuOptions(
        route: "SwitchView",
        icon: Icons.remove,
        name: "Switch",
        screen: const SwtichViewScreen()),
    MenuOptions(
        route: "DrawerView",
        icon: Icons.remove,
        name: "Drawer",
        screen: const DrawerScreen()),
    MenuOptions(
        route: "RadioButton",
        icon: Icons.remove,
        name: "RadioButton",
        screen: const RadioButtonScreen()),
    MenuOptions(
        route: "SnackBarView",
        icon: Icons.remove,
        name: "SnackBar",
        screen: const SnackBarScreen()),
    MenuOptions(
        route: "TextButtonView",
        icon: Icons.remove,
        name: "TextButton",
        screen: const TextButtonScreen()),
    MenuOptions(
        route: "SliderView",
        icon: Icons.remove,
        name: "Slider",
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //Creando map para construir las rutas por la seleccion
    //que hagamos en menu, inicializamos
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    //agregamos la ruta de home map
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});
    //Recorremos las rutas para que coincida con la seleccion en Menu
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}
