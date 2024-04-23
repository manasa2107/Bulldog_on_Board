import 'package:flutter/material.dart';
import 'package:flutter_application_2/Food.dart';
import 'package:flutter_application_2/settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'main.dart';
import 'Travel.dart';
import 'Housing.dart';
import 'Food.dart';

class Opage extends StatelessWidget {
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
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Other Information ",
                    style: TextStyle(
                        fontSize: 24,
                         fontWeight: FontWeight.bold,
                       color:Colors.white),
                  ),
                     Icon(Icons.info, color: Colors.white, size:27),
                ],
              ),
              SizedBox(height:50),
              Expanded(
  child: Padding(
    padding: EdgeInsets.all(10.0), // Adjust the padding as needed
    child: GridView.count(
      crossAxisCount: 2, // 2 columns
      childAspectRatio: 2,
      mainAxisSpacing: 30.0, // Add vertical spacing between grid items
      crossAxisSpacing: 20.0, // Add horizontal spacing between grid items
      children: <Widget>[
        GridItem("Health Insurance", url:'https://health-services.d.umn.edu/appointments/health-insurance-information'),
        GridItem("ISS check in", url:'https://isss.umn.edu/new-students/requirements/myisss'),
        GridItem("SSN info", url:'https://iss.d.umn.edu/employment/social-security-number-ssn'),
        GridItem("Finances", url:'https://iss.d.umn.edu/financial-information'),
        GridItem("On campus jobs", url:'https://hr.d.umn.edu/working-umd/student-employment-resources'),
        GridItem("Scholarships", url:'https://admissions.d.umn.edu/costs-aid/scholarships'),
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
        icon: Icon(Icons.apartment, size: 45, color:Colors.black), 
          onPressed: () {
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
          icon: Icon(Icons.fastfood, size: 45, color:Colors.black), 
          onPressed: () {
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
           icon: Icon(Icons.directions_bus, size: 45, color:Colors.black), 
          onPressed: () {
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
      icon: Icon(Icons.info, size: 45, color:Colors.black), 
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

  GridItem(this.title, {required this.url});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WebViewPage(title:title, url: url)),
        );
      },
      child: SizedBox(
        height: 100, // Adjust the height as needed
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
                 color:Colors.black,

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
