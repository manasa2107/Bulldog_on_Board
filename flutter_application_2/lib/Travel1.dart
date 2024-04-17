import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/Food.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';
import 'Opage.dart';
import 'Housing.dart';
import 'Travel.dart';


class TravelInDuluthPage extends StatelessWidget {
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Travel in Duluth",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                 Icon(Icons.directions_bus, color: Colors.white, size:30),
                ],
              ),
              SizedBox(height:30),
Expanded(
  child: Padding(padding: EdgeInsets.all(10),
    child: GridView.count(
      crossAxisCount: 1, // 1 column for this section
      childAspectRatio: 2,
      children: <Widget>[
        GridItem(
          title: "Duluth Transit app enables real-time bus tracking and route planning. Bulldog Lyft offers UMD discounts for convenient rides across the city. These services enhance travel convenience in Duluth.",
          url: 'https://iss.d.umn.edu/immigration/travel-info',
        ),
      ],
    )
    ),
),
Expanded(
  child: Padding(
    padding: EdgeInsets.all(15.0),
    child: GridView.count(
      crossAxisCount: 2, // 2 columns
      childAspectRatio: 1.05,
    // mainAxisSpacing: 10.0, // Add vertical spacing between grid items
    crossAxisSpacing: 20.0,
      children: <Widget>[
        GridItem(
        //  title: "DTA",
          backgroundImage: 'lib/assets/DTA.jpg',
          url: 'https://www.duluthtransit.com/',
        ),
        GridItem(
         // title: "Lyft",
          backgroundImage: 'lib/assets/Lyft.png',
          url: 'https://www.lyft.com/rider/cities/duluth-mn',
        ),
      ],
    ),
  ),
),
            ],
          ),
        ),
                 bottomNavigationBar: BottomAppBar(
  color: const Color.fromRGBO(255, 204, 51, 1.0),
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
          icon: Icon(Icons.fastfood, size: 45, color:Colors.black),  // Customize size and color here
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
  final String? title;
  final String url;
  final String? backgroundImage; // Making backgroundImage optional

  GridItem({this.title, required this.url, this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
    MaterialPageRoute(builder: (context) => WebViewPage(title: title ?? "", url: url)),
        );
      },
      child: SizedBox(
       // height: 100, // Adjust the height as needed
        child: Card(
          elevation: 3,
          color: Colors.white,
          child: Container(
            decoration: backgroundImage != null
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage(backgroundImage!),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1),
                        BlendMode.darken,
                      ),
                    ),
                  )
                : null,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  title ?? "", // Use empty string if title is null
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
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

// class GridItem extends StatelessWidget {
//   final String? title;
//   final String url;
//   final String? backgroundImage; // Making backgroundImage optional

//   GridItem({this.title, required this.url, this.backgroundImage});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => WebViewPage(title: title ?? "", url: url)),
//         );
//       },
//       child: SizedBox(
//         // height: 100, // Adjust the height as needed
//         child: Card(
//           elevation: 3,
//           color: Colors.white,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30), // Circular border
//           ),
//           child: Container(
//             decoration: backgroundImage != null
//                 ? BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(backgroundImage!),
//                       fit: BoxFit.cover,
//                       colorFilter: ColorFilter.mode(
//                         Colors.black.withOpacity(0.1),
//                         BlendMode.darken,
//                       ),
//                     ),
//                   )
//                 : null,
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   title ?? "", // Use empty string if title is null
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class WebViewPage extends StatelessWidget {
  final String title;
  final String url;

   WebViewPage({required this.title,required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text(title),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
