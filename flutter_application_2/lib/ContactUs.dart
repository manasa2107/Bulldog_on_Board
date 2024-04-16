import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/Food.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';
import 'Opage.dart';
import 'Housing.dart';
import 'Travel.dart';

class ContactUs extends StatelessWidget {
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
                // Add functionality for the house icon
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
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
                //leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  // Navigate to signup screen or perform action
                },
              ),
              ListTile(
                //leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Navigate to settings screen or perform action
                },
              ),
              ListTile(
                // leading: Icon(Icons.login),
                title: Text('Signout'),
                onTap: () {
                  // Navigate to login screen or perform action
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Color.fromARGB(237, 152, 3, 3),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Contact Us",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        // color: Color.fromARGB(255, 250, 233, 83)),
                        color: Colors.white),
                  ),
                  //Icon(Icons.info, color: Color.fromARGB(255, 250, 233, 77)),
                ],
              ),
              SizedBox(height: 80),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 1, // 1 column for alignment
                  childAspectRatio:
                      4, // Adjusted for a more stretched grid item
                  mainAxisSpacing: 50, // Spacing between grids
                  crossAxisSpacing: 10, // Spacing at the sides of the grid
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Align items to the center of the row
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: GridItem("Stanley"),
                        ),
                        SizedBox(width: 20), // Space between name and icons
                        Icon(Icons.email, size: 30),
                        // SizedBox(width: 10), // Space between icons
                        // Icon(Icons.linked_camera, size: 30),
                        SizedBox(width: 10), // Space between icons
                        Icon(Icons.facebook, size: 30),
                        SizedBox(width: 10), // Space between icons
                        Icon(Icons.phone, size: 30),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Align items to the center of the row
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: GridItem("Manasa"),
                        ),
                        SizedBox(width: 20), // Space between name and icons
                        Icon(Icons.email, size: 30),
                        // SizedBox(width: 10), // Space between icons
                        // Icon(Icons.linked_camera, size: 30),
                        SizedBox(width: 10), // Space between icons
                        Icon(Icons.facebook, size: 30),
                        SizedBox(width: 10), // Space between icons
                        Icon(Icons.phone, size: 30),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Align items to the center of the row
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: GridItem("Harika.Y"),
                        ),
                        SizedBox(width: 20), // Space between name and icons
                        Icon(Icons.email, size: 30),
                        // SizedBox(width: 10), // Space between icons
                        // Icon(Icons.linked_camera, size: 30),
                        SizedBox(width: 10), // Space between icons
                        Icon(Icons.facebook, size: 30),
                        SizedBox(width: 10), // Space between icons
                        Icon(Icons.phone, size: 30),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(255, 235, 59, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 10), // Adjust left and right margins here
                child: IconButton(
                  icon: Icon(Icons.apartment,
                      size: 45,
                      color: const Color.fromRGBO(
                          152, 3, 3, 0.929)), // Customize size and color here
                  onPressed: () {
                    // Handle sign up action
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Housing()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 10), // Adjust left and right margins here
                child: IconButton(
                  icon: Icon(Icons.fastfood,
                      size: 40,
                      color: const Color.fromRGBO(
                          152, 3, 3, 0.929)), // Customize size and color here
                  onPressed: () {
                    // Handle login action
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Food()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 10), // Adjust left and right margins here
                child: IconButton(
                  icon: Icon(Icons.directions_bus,
                      size: 40,
                      color: const Color.fromRGBO(
                          152, 3, 3, 0.929)), // Customize size and color here
                  onPressed: () {
                    // Handle contact us action
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Travel()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 10), // Adjust left and right margins here
                child: IconButton(
                  icon: Icon(Icons.info,
                      size: 40,
                      color: const Color.fromRGBO(
                          152, 3, 3, 0.929)), // Customize size and color here
                  onPressed: () {
                    // Handle settings action
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
  // final double fontSize;
  //final String url;

  // GridItem(this.title, {required this.fontSize, required this.url});
  GridItem(this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 100, // Adjust the height as needed
        child: Card(
          elevation: 3,
          color: Colors.yellow,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  color: const Color.fromRGBO(152, 3, 3, 0.929),
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
