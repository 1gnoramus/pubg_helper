import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehiclesScreen extends StatefulWidget {
  VehiclesScreen({super.key});
  static String id = 'vehicles_screen';

  @override
  State<VehiclesScreen> createState() => _VehiclesscreenState();
}

class _VehiclesscreenState extends State<VehiclesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'VEHICLES',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF323232),
      ),
      backgroundColor: const Color(0xFF161616),
      body: Container(),
    );
  }
}
