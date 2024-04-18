import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/Food.dart';
import 'package:flutter_application_2/settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';
import 'Travel1.dart';
import 'Travel2.dart';
import 'Opage.dart';
import 'Housing.dart';



class Travel extends StatelessWidget {
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
              color: const Color.fromRGBO(255, 204, 51, 1.0), // Set color to yellow
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Travel ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(Icons.directions_bus, color:Colors.white, size:30),
                ],
              ),
              SizedBox(height:30),
              Expanded(
                child: Padding(
    padding: EdgeInsets.all(10.0), 
                child: GridView.count(
                  crossAxisCount: 1, // 2 columns
                  childAspectRatio: 2.5,
      mainAxisSpacing: 20.0, // Add vertical spacing between grid items
      crossAxisSpacing: 10.0, 
                  children: <Widget>[
                    GridItem("Travel in Duluth", url:'https://health-services.d.umn.edu/appointments/health-insurance-information', type:'DartPage', image:'lib/assets/TravelDuluth.jpg'),
                    GridItem("Foreign and In-land Travel", url:'https://isss.umn.edu/new-students/requirements/myisss', type:'DartPage', image:'lib/assets/TravelOut.jpg'),
                    GridItem("Campus Map", url:'https://maps.umn.edu/Duluth_Campusmap/', type:'InAppBrowser',image: 'lib/assets/Campusmap.jpg'),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
                 bottomNavigationBar: BottomAppBar(
  color: Color.fromRGBO(255, 204, 51, 1.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.apartment, size: 45, color: Colors.black),  // Customize size and color here
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
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.fastfood, size: 45, color: Colors.black),  // Customize size and color here
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
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.directions_bus, size: 45, color: Colors.black),  // Customize size and color here
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
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.info, size: 45, color: Colors.black),  // Customize size and color here
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
  final String url;
  final String type;
  final String? image;

  GridItem(this.title, {required this.url, required this.type, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (type == "DartPage") {
          // Navigate to different dart pages based on item type
          if (title == "Travel in Duluth") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TravelInDuluthPage()),
            );
          } else if (title == "Foreign and In-land Travel") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InternationalTravelPage()),
            );
          }
        } else if (type == "InAppBrowser") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WebViewPage(title:title, url: url)),
          );
        }
      },
      child: SizedBox(
       // height: 100,
        child: Card(
          elevation: 10,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
              image: image != null
                  ? DecorationImage(
                      image: AssetImage(image!),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), // Adjust opacity here
                        BlendMode.darken, // Adjust blend mode as needed
                      ),
                    )
                  : null,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                   // color: title == "Campus Map" ? Colors.white : Colors.black, // Change text color based on title
                   color:const Color.fromRGBO(255, 204, 51, 1.0),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
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

  WebViewPage({required this.title,required this.url});

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
