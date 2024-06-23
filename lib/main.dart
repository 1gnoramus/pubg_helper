import 'package:flutter/material.dart';
import 'package:pubg_app/screens/EquipmentScreen.dart';
import 'package:pubg_app/screens/ItemsScreen.dart';
import 'package:pubg_app/screens/MainScreen.dart';
import 'package:pubg_app/screens/VehiclesScreen.dart';
import 'package:pubg_app/screens/WeaponsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black38))),
      initialRoute: MainScreen.id,
      routes: {
        WeaponsScreen.id: (context) => WeaponsScreen(),
        EquipmentScreen.id: (context) => EquipmentScreen(),
        ItemsScreen.id: (context) => ItemsScreen(),
        VehiclesScreen.id: (context) => VehiclesScreen(),
        MainScreen.id: (context) => MainScreen()
      },
    );
  }
}
