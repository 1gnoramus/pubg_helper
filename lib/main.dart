import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Домой', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Поиск', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Настройки',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 80.0),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CategoryContainer(
                  title: 'WEAPONS',
                  imageName: 'weapon_',
                ),
                SizedBox(
                  width: 20.0,
                ),
                CategoryContainer(
                  title: 'EQUIPMENT',
                  imageName: 'equipment',
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
                  title: 'VEHICLES',
                  imageName: 'vehicle',
                ),
                SizedBox(
                  width: 20.0,
                ),
                CategoryContainer(
                  title: 'ITEMS',
                  imageName: 'items',
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class CategoryContainer extends StatelessWidget {
  const CategoryContainer(
      {super.key, required this.title, required this.imageName});
  final String title;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: TextButton(
        onPressed: () {},
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
              )),
            ],
          ),
        ),
      ),
    );
  }
}
