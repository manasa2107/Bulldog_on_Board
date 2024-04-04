import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bulldog on Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
       scaffoldBackgroundColor: Colors.orange, 
      // scaffoldBackgroundColor: Color.fromARGB(220, 242, 164, 46),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
             color: Color.fromARGB(237, 152, 3, 3),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Rounded corners
            border: Border.all(
              color: Color.fromARGB(237, 152, 3, 3),  // Border color
              width: 2,            // Border width
            ),
          ),
          child: Text(
            'Bulldog on Board',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black, 
              //backgroundColor: Colors.orange, // Text color matches border color
            ),
          ),
        ),
        //title: Text('Bulldog on Board'),
        centerTitle: true,
        elevation: 0, // Remove elevation of AppBar
        backgroundColor: Color.fromARGB(220, 242, 164, 46),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Image.asset(
                  '/Users/boyapatiyagnamanasa/Desktop/flutter_application_2/lib/assets/BullDog.jpg',
                  height: 205,
                  width: 420,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Text('Explore the contents within !',  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                
              ],
            ),
          ),
          SizedBox(height: 3),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildGridItem(context, 'Housing', Icons.home ),
              _buildGridItem(context, 'Food', Icons.fastfood),
              _buildGridItem(context, 'Travel', Icons.flight),
              _buildGridItem(context, 'Other', Icons.library_books),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
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
              leading: Icon(Icons.account_circle),
              title: Text('Sign Up'),
              onTap: () {
                // Navigate to signup screen or perform action
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              onTap: () {
                // Navigate to login screen or perform action
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
              onTap: () {
                // Navigate to contact us screen or perform action
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings screen or perform action
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle, size:32, color:Colors.orange),
      //       label: 'Sign Up',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.login, size:32, color:Colors.orange),
      //       label: 'Login',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.contact_mail, size:32, color:Colors.orange),
      //       label: 'Contact Us',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings, size:32, color:Colors.orange),
      //       label: 'Settings',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomAppBar(
  color: Color.fromARGB(237, 152, 3, 3),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.account_circle, size: 40, color: Colors.orange),  // Customize size and color here
          onPressed: () {
            // Handle sign up action
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.login, size: 40, color: Colors.orange),  // Customize size and color here
          onPressed: () {
            // Handle login action
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.contact_mail, size: 40, color: Colors.orange),  // Customize size and color here
          onPressed: () {
            // Handle contact us action
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10), // Adjust left and right margins here
        child: IconButton(
          icon: Icon(Icons.settings, size: 40, color: Colors.orange),  // Customize size and color here
          onPressed: () {
            // Handle settings action
          },
        ),
      ),
    ],
  ),
),


    );
  }

  Widget _buildGridItem(BuildContext context, String title, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Handle item tap
      },
      child: Card(
        elevation: 4,
         child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.blue),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 16)),
          ],
        // children: [
        //     if (icon is IconData)
        //       Icon(icon, size: 50, color: Colors.blue),
        //     if (icon is String)
        //       Image.asset(
        //         icon,
        //         height: 100,
        //         width: 100,
        //         fit: BoxFit.cover,
        //       ),
        //     SizedBox(height: 10),
        //     Text(title, style: TextStyle(fontSize: 16)),
        //   ],
        ),
      ),
    );
  }
}

