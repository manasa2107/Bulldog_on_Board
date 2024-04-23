import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/Food.dart';
import 'package:flutter_application_2/settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'main.dart';
import 'Opage.dart';
import 'Housing.dart';
import 'Travel.dart';

class InternationalTravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(5),
            child: Text(
              ' Bulldog on Board   ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(255, 204, 51, 1.0),
              ),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                iconSize: 30,
                color: const Color.fromRGBO(255, 204, 51, 1.0),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home), // House icon
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                color: const Color.fromRGBO(
                    255, 204, 51, 1.0) // Set color to yellow
                ),
          ],
          backgroundColor: Color.fromARGB(237, 152, 3, 3),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(152, 3, 3, 0.929),
                ),
                child: Text(
                  'Bulldog on Board',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              ),
              ListTile(
                title: Text('Signout'),
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Foreign and In-land Travel",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.directions_bus, color: Colors.white, size: 30),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: GridView.count(
                    crossAxisCount: 1, // 2 columns
                    childAspectRatio: 1.5,
                    children: <Widget>[
                      GridItem(
                        "Essential documentation requirements for both domestic and international travel for F-1 students. It covers necessary documents for re-entry into the U.S. and emphasizes the importance of planning ahead to ensure compliance and smooth travel experiences.",
                        url: 'https://iss.d.umn.edu/immigration/travel-info',
                        icon: null,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebViewPage(
                              title: "Travel Info",
                              url:
                                  'https://iss.d.umn.edu/immigration/travel-info')));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 125), // Adjust vertical padding here
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: 45 * 3.1415927 / 180, // 45 degrees in radians
                        child: RotationTransition(
                          turns:
                              AlwaysStoppedAnimation(-90 / 360), // -15 degrees
                          child: Icon(
                            Icons.airplanemode_active,
                            color: Colors.white,
                            size: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromRGBO(255, 204, 51, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: IconButton(
                  icon: Icon(Icons.apartment, size: 45, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Housing()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: IconButton(
                  icon: Icon(Icons.fastfood, size: 45, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Food()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: IconButton(
                  icon:
                      Icon(Icons.directions_bus, size: 45, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Travel()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: IconButton(
                  icon: Icon(Icons.info, size: 45, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Opage()),
                    );
                  },
                ),
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
  final String url;

  GridItem(this.title, {required this.url, Icon? icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WebViewPage(title: title, url: url)),
        );
      },
      child: SizedBox(
        child: Card(
          elevation: 3,
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WebViewPage extends StatelessWidget {
  final String title;
  final String url;

  WebViewPage({required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
