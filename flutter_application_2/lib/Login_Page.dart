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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "BullDogOnBoard",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.yellow),
                ),
              ),
              Spacer(),
              Icon(
                Icons.home,
                color: Colors.yellow, // Change color to yellow
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 148, 19, 10),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 40,
                    // Set font style to italic
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 214, 16, 16),
                ),
              ),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20,
                    // Set font style to italic
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Update UI based on drawer item selected
                },
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 20,
                    // Set font style to italic
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Update UI based on drawer item selected
                },
              ),
              ListTile(
                title: Text(
                  'Sign Out',
                  style: TextStyle(
                    fontSize: 20,
                    // Set font style to italic
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Update UI based on drawer item selected
                },
              ),
              ListTile(
                title: Text(
                  'Option 4',
                  style: TextStyle(
                    fontSize: 20,
                    // Set font style to italic
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Update UI based on drawer item selected
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
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 175, 19, 8),
                              fontStyle: FontStyle.italic,
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
                  // Navigate to food page
                },
              ),
              IconButton(
                icon: Icon(Icons.fastfood, size: 40),
                color: Color.fromRGBO(15, 10, 10, 1),
                onPressed: () {
                  // Navigate to food page
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
                },
              ),
              IconButton(
                icon: Icon(Icons.info, size: 40),
                color: Color.fromRGBO(15, 10, 10, 1),
                onPressed: () {
                  // Navigate to information page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
