import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeaponsScreen extends StatefulWidget {
  const WeaponsScreen({super.key});
  static String id = 'weapon_screen';
  @override
  State<WeaponsScreen> createState() => _WeaponsScreenState();
}

class _WeaponsScreenState extends State<WeaponsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'WEAPON',
            style: TextStyle(color: Colors.black12),
          ),
        ),
        backgroundColor: const Color(0xFF323232),
      ),
      backgroundColor: const Color(0xFF161616),
      body: Container(),
    );
  }
}
