import 'package:flutter/material.dart';
import 'package:flutter_application_2/Food.dart';
import 'package:flutter_application_2/Housing.dart';
import 'package:flutter_application_2/Opage.dart';
import 'package:flutter_application_2/SignUp.dart';
import 'package:flutter_application_2/Travel.dart';
import 'package:flutter_application_2/main.dart';

class Login extends StatelessWidget {
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
        backgroundColor: Color.fromARGB(255, 148, 19, 10),
        body: Container(
          margin:
              EdgeInsets.only(top: 5), // Adjust the margin to reduce the gap
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.login, color: Colors.yellow),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 300,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 219, 29),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Username or Email",
                            style: TextStyle(
                              color: Color.fromARGB(255, 175, 19, 8),
                              fontWeight:
                                  FontWeight.bold, // Set text color to red
                            ),
                          ),
                          SizedBox(height: 5.0),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Password",
                            style: TextStyle(
                              color: Color.fromARGB(
                                  255, 175, 19, 8), // Set text color to red
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            obscureText: true,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Not a user?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 175, 19, 8),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                           GestureDetector(
      onTap: () {
        // Navigate to Login page when "Login" is clicked
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUp()), 
        );
      },
      child: Text(
        "Sign Up",
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Color.fromARGB(255, 175, 19, 8),
          fontStyle: FontStyle.italic,
        ),
      ),
    ),
  ],
),
                      SizedBox(height: 5.0),
                      Text(
                        "Forgot password",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 175, 19, 8),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          // Implement login functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 240, 219, 29),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.apartment,
                  size: 40,
                  color: Color.fromRGBO(15, 10, 10, 1),
                ),
                onPressed: () {
                  // Navigate to housing page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Housing()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.fastfood, size: 40),
                color: Color.fromRGBO(15, 10, 10, 1),
                onPressed: () {
                  // Navigate to food page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Food()),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.directions_bus,
                  size: 40,
                  color: Color.fromRGBO(15, 10, 10, 1),
                ),
                onPressed: () {
                  // Navigate to travel page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Travel()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.info, size: 40),
                color: Color.fromRGBO(15, 10, 10, 1),
                onPressed: () {
                  // Navigate to information page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Opage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
