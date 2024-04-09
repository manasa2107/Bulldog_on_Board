import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Opage.dart';
import 'Housing.dart';
import 'Travel.dart';
import 'Food1.dart';

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
        scaffoldBackgroundColor: const Color.fromRGBO(255, 204, 51, 1.0),
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
              color: Color.fromRGBO(152, 3, 3, 0.929),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Container(
          padding: EdgeInsets.all(5),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(14), // Rounded corners
          //   border: Border.all(
          //     color: Color.fromRGBO(152, 3, 3, 0.922),  // Border color
          //     width: 4,            // Border width
          //   ),
          // ),
          child: Text(
            ' Bulldog on Board ',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(152, 3, 3, 0.922),
            ),
          ),
        ),
        //title: Text('Bulldog on Board'),
        centerTitle: true,
        elevation: 0, // Remove elevation of AppBar
        backgroundColor: const Color.fromRGBO(255, 204, 51, 1.0),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/BullDog.jpg',
                  height: 205,
                  width: 420,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Text('Explore the contents within !',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(152, 3, 3, 0.922))),
              ],
            ),
          ),
          SizedBox(height: 3),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.1,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildGridItem(context, 'Housing', Icons.home, Housing()),
              _buildGridItem(context, 'Food', Icons.fastfood, FindGroceries()),
              _buildGridItem(context, 'Travel', Icons.flight, Travel()),
              _buildGridItem(context, 'Other Information', Icons.info, Opage()),
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
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(152, 3, 3, 0.929),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 10, right: 10), // Adjust left and right margins here
              child: IconButton(
                icon: Icon(Icons.account_circle,
                    size: 40,
                    color: const Color.fromRGBO(
                        255, 235, 59, 1)), // Customize size and color here
                onPressed: () {
                  // Handle sign up action
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10, right: 10), // Adjust left and right margins here
              child: IconButton(
                icon: Icon(Icons.login,
                    size: 40,
                    color: const Color.fromRGBO(
                        255, 235, 59, 1)), // Customize size and color here
                onPressed: () {
                  // Handle login action
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10, right: 10), // Adjust left and right margins here
              child: IconButton(
                icon: Icon(Icons.contact_mail,
                    size: 40,
                    color: const Color.fromRGBO(
                        255, 235, 59, 1)), // Customize size and color here
                onPressed: () {
                  // Handle contact us action
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10, right: 10), // Adjust left and right margins here
              child: IconButton(
                icon: Icon(Icons.settings,
                    size: 40,
                    color: const Color.fromRGBO(
                        255, 235, 59, 1)), // Customize size and color here
                onPressed: () {
                  // Handle settings action
                },
              ),
            ),
          ],
        ),
      ),
// floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Navigate to OtherInformationPage when FloatingActionButton is pressed
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => OtherInformationPage()),
//           );
//         },
//         child: Icon(Icons.info), // Icon for FloatingActionButton
//       ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String title, IconData icon, Widget page) {
    return GestureDetector(
      onTap: () {
        // Handle item tap
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: const Color.fromRGBO(152, 3, 3, 0.922)),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
