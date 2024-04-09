

  import 'package:flutter/material.dart';
  import 'main.dart';

  // void main() => runApp(const MyApp());

  class Housing extends StatelessWidget {
    // const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Bulldog on Board',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color.fromARGB(237, 152, 3, 3),
        ),
        home: HousingScreen(),
      );
    }
  }

  class HousingScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromARGB(237, 152, 3, 3),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu, color:Colors.yellow),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bulldog onBoard', style:TextStyle(color:Colors.yellow,),),
              SizedBox(width: 10),
              //Icon(Icons.apartment),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home, color:Colors.yellow),
              iconSize: 35,
              onPressed: () {
                // Handle home icon action
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),);
              },
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



        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(Icons.search, color:Colors.yellow),
                  SizedBox(width: 10),
                  Text(
                    'Search ...',
                    style: TextStyle(fontSize: 20, color:Colors.yellow),
                  ),
                ],
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Housing',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.yellow),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.apartment, color:Colors.yellow),
                  ],
                ),
              ),
            ),
            _buildHouseCard(
              context,
              'Bluestone Lofts, Duluth, 55811',
              '1BHK+1 BED',
              '\$817 per month',
            ),
            SizedBox(height: 10),
            
            _buildHouseCard(
              context,
              'Villa Hills, Duluth, 55811',
              '1BHK+1 BED',
              '\$970 per month',
            ),
          ],
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
      );
    }

    Widget _buildHouseCard(BuildContext context, String location, String details, String price) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.yellow, width: 2),
          ),
    
          elevation: 4,
          color: Color.fromARGB(237, 152, 3, 3),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Available Now',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.bookmark, color: Colors.yellow),
                  ],
                ),
                SizedBox(height: 10),
                
                Text(
                  location,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.yellow),
                ),
                SizedBox(height: 5),
                Text(
                  details,
                  style: TextStyle(fontSize: 16, color:Colors.yellow),
                ),
                 SizedBox(height: 5),
                Text(
                  price,
                  style: TextStyle(fontSize: 16, color:Colors.yellow),
                ),
  SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Read More',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward, color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }


