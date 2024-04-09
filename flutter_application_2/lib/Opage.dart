import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';
// import 'main.dart';
import 'Travel.dart';
// import 'Travel2.dart';
// import 'Opage.dart';
import 'Housing.dart';



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
                    "Other Information ",
                    style: TextStyle(
                        fontSize: 24,
                        // fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 233, 83)),
                  ),
                  Icon(Icons.info, color: Color.fromARGB(255, 250, 233, 77)),
                ],
              ),
              SizedBox(),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // 2 columns
                  childAspectRatio: 1.03,
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
          icon: Icon(Icons.home, size: 45, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
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
          icon: Icon(Icons.fastfood, size: 40, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
          onPressed: () {
            // Handle login action
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
          icon: Icon(Icons.flight, size: 40, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
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
          icon: Icon(Icons.info, size: 40, color: const Color.fromRGBO(152, 3, 3, 0.929)),  // Customize size and color here
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
  final String url;

  // GridItem(this.title, {required this.fontSize, required this.url});
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