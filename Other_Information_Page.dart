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
          title: Text(
            "BulldogOnBoard",
            style: TextStyle(fontSize: 25), // Adjust the font size as needed
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                iconSize: 25,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          backgroundColor: Color.fromARGB(237, 152, 3, 3),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header',
                    style: TextStyle(color: Colors.yellow)),
                decoration: BoxDecoration(
                  color: Color.fromARGB(237, 152, 3, 3),
                ),
              ),
              ListTile(
                title: Text('Item 1', style: TextStyle(color: Colors.yellow)),
                onTap: () {
                  // Update the layout or handle the click event
                },
              ),
              ListTile(
                title: Text('Item 2', style: TextStyle(color: Colors.yellow)),
                onTap: () {
                  // Update the layout or handle the click event
                },
              ),
              // Add more items as needed
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
              Icon(Icons.home, color: Colors.black),
              Icon(Icons.fastfood, color: Colors.black),
              Icon(Icons.directions_car, color: Colors.black),
              Icon(Icons.info, color: Colors.black),
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
