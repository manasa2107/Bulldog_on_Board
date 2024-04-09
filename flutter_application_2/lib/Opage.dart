import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';



class Opage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), // Rounded corners
            border: Border.all(
              color: Color.fromRGBO(255, 204, 51, 1.0),  // Border color
              width: 4,            // Border width
            ),
          ),
          child: Text(
            ' Bulldog on Board ',
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Other Information ",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 233, 83)),
                  ),
                  Icon(Icons.info, color: Color.fromARGB(255, 250, 233, 77)),
                ],
              ),
              SizedBox(),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // 2 columns
                  children: <Widget>[
                    GridItem("Health Insurance", fontSize: 20, url:'https://health-services.d.umn.edu/appointments/health-insurance-information'),
                    GridItem("ISS check in", fontSize: 20, url:'https://health-services.d.umn.edu/appointments/health-insurance-information'),
                    GridItem("SSN info", fontSize: 20, url:'https://health-services.d.umn.edu/appointments/health-insurance-information'),
                    GridItem("Finances", fontSize: 20, url:'https://health-services.d.umn.edu/appointments/health-insurance-information'),
                    GridItem("On campus jobs", fontSize: 20, url:'https://health-services.d.umn.edu/appointments/health-insurance-information'),
                    GridItem("Scholarships", fontSize: 20, url:'https://health-services.d.umn.edu/appointments/health-insurance-information'),
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
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.account_circle, size: 40, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
          onPressed: () {
            // Handle sign up action
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.login, size: 40, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
          onPressed: () {
            // Handle login action
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.contact_mail, size: 40, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
          onPressed: () {
            // Handle contact us action
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.settings, size: 40, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
          onPressed: () {
            // Handle settings action
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
  final double fontSize;
  final String url;

  GridItem(this.title, {required this.fontSize, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Card(
        elevation: 3,
        color: Colors.yellow,
        child: Center(
          // child: SizedBox(
          // width: 100, // Adjust the width of the card
          // height: 10, // Adjust the height of the card
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black, // Set color to black for all titles
              fontSize: fontSize, // Set the same font size for all titles
            ),
          ),
          // ),
        ),
      ),
    );
  }
}
