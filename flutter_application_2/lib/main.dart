// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page by Manasa'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }





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

