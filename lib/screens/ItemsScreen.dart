import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsScreen extends StatefulWidget {
  ItemsScreen({super.key});
  static String id = 'items_screen';

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'ITEMS',
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
