import 'package:flutter/material.dart';
import 'package:flutter_application_2/Food.dart';
import 'package:flutter_application_2/Housing.dart';
import 'package:flutter_application_2/Login_Page.dart';
import 'package:flutter_application_2/Opage.dart';
import 'package:flutter_application_2/Travel.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/settings.dart';

class SignUp extends StatelessWidget {
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
              color: const Color.fromRGBO(
                  255, 204, 51, 1.0), // Set color to yellow
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
        backgroundColor: Color.fromARGB(255, 148, 19, 10),
        body: Container(
          margin:
              EdgeInsets.only(top: 0), // Adjust the margin to reduce the gap
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 40.0,
                          color: const Color.fromRGBO(255, 204, 51, 1.0),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.account_circle,
                      size: 40,
                      color: const Color.fromRGBO(255, 204, 51, 1.0),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 300,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20, // Set text color to red
                            ),
                          ),
                          SizedBox(height: 5.0),
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey[
                                  300], // Choose the shade of gray you prefer
                              filled: true,
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
                              color: Colors.black, // Set text color to red
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey[
                                  300], // Choose the shade of gray you prefer
                              filled: true,
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
                            "Already a member?",
                            style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to Login page when "Login" is clicked
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          // Implement Sign Up functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
          color: const Color.fromRGBO(255, 204, 51, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 10), // Adjust left and right margins here
                child: IconButton(
                  icon: Icon(Icons.apartment,
                      size: 45,
                      color: Colors.black), // Customize size and color here
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
                      size: 45,
                      color: Colors.black), // Customize size and color here
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
                      size: 45,
                      color: Colors.black), // Customize size and color here
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
                      size: 45,
                      color: Colors.black), // Customize size and color here
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
