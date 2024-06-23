import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pubg_app/screens/EquipmentScreen.dart';
import 'package:pubg_app/screens/ItemsScreen.dart';
import 'package:pubg_app/screens/VehiclesScreen.dart';
import 'package:pubg_app/screens/WeaponsScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String id = 'main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'PUBG HELPER',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF323232),
      ),
      backgroundColor: const Color(0xFF161616),
      body: Container(
        margin: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CategoryContainer(
                  key: UniqueKey(),
                  title: 'WEAPONS',
                  imageName: 'weapon_',
                  pathName: WeaponsScreen.id,
                ),
                SizedBox(
                  width: 20.0,
                ),
                CategoryContainer(
                  key: UniqueKey(),
                  title: 'EQUIPMENT',
                  imageName: 'equipment',
                  pathName: EquipmentScreen.id,
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CategoryContainer(
                  key: UniqueKey(),
                  title: 'VEHICLES',
                  imageName: 'vehicle',
                  pathName: VehiclesScreen.id,
                ),
                SizedBox(
                  width: 20.0,
                ),
                CategoryContainer(
                  key: UniqueKey(),
                  title: 'ITEMS',
                  imageName: 'items',
                  pathName: ItemsScreen.id,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  const CategoryContainer(
      {super.key,
      required this.title,
      required this.imageName,
      required this.pathName});
  final String title;
  final String imageName;
  final String pathName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, pathName);
        },
        child: Container(
          height: 150.0,
          width: 150.0,
          color: Colors.white,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'lib/assets/$imageName.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black.withOpacity(0.4), // затемняющий слой
              ),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
