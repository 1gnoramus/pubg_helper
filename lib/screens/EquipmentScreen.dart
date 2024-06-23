import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EquipmentScreen extends StatefulWidget {
  EquipmentScreen({super.key});
  static String id = 'equipment_screen';

  @override
  State<EquipmentScreen> createState() => _EquipmentScreenState();
}

class _EquipmentScreenState extends State<EquipmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'EQUIPMENT',
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
