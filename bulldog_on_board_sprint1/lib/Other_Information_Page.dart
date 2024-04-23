import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "BulldogOnBoard",
              style: TextStyle(
                fontSize: 25,
                color: Colors.yellow,
              ),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                iconSize: 25,
                color: Colors.yellow,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home), // House icon
              onPressed: () {
              },
              color: Colors.yellow, // Set color to yellow
            ),
          ],
          backgroundColor: Color.fromARGB(237, 152, 3, 3),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Menu',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                decoration: BoxDecoration(
                  color: Color.fromARGB(237, 152, 3, 3),
                ),
              ),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 15, 14, 3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                },
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 19, 18, 13),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                },
              ),

              ListTile(
                title: Text('Sign Out',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 19, 18, 13),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('Option 4',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 19, 18, 13),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                onTap: () {
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Color.fromARGB(237, 152, 3, 3),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Other Information",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 233, 83)),
                  ),
                  Icon(Icons.info, color: Color.fromARGB(255, 250, 233, 77)),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // 2 columns
                  children: <Widget>[
                    GridItem("Health Insurance", fontSize: 20),
                    GridItem("ISS check in", fontSize: 20),
                    GridItem("SSN info", fontSize: 20),
                    GridItem("Finances", fontSize: 20),
                    GridItem("On campus jobs", fontSize: 20),
                    GridItem("Scholarships", fontSize: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(20),
          color: const Color.fromARGB(255, 236, 221, 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.apartment,
                color: Colors.black,
                size: 40,
              ),
              Icon(
                Icons.fastfood,
                color: Colors.black,
                size: 40,
              ),
              Icon(
                Icons.directions_bus,
                color: Colors.black,
                size: 40,
              ),
              Icon(
                Icons.info,
                color: Colors.black,
                size: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String title;
  final double fontSize;

  GridItem(this.title, {required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.yellow,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black, // Set color to black for all titles
            fontSize: fontSize, // Set the same font size for all titles
          ),
        ),
      ),
    );
  }
}
