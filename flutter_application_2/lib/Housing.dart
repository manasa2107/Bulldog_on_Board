  // import 'package:flutter/material.dart';

  // void main() => runApp(const MyApp());

  // class MyApp extends StatelessWidget {
  //   const MyApp({Key? key}) : super(key: key);

  //   @override
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       title: 'Bulldog on Board',
  //       theme: ThemeData(
  //         primarySwatch: Colors.blue,
  //         visualDensity: VisualDensity.adaptivePlatformDensity,
  //         scaffoldBackgroundColor: Colors.orange,
  //       ),
  //       home: HousingScreen(),
  //     );
  //   }
  // }

  // class HousingScreen extends StatelessWidget {
  //   @override
  //   Widget build(BuildContext context) {
  //     return Scaffold(
  //       appBar: AppBar(
  //         leading: Builder(
  //           builder: (BuildContext context) {
  //             return IconButton(
  //               icon: Icon(Icons.menu),
  //               onPressed: () {
  //                 Scaffold.of(context).openDrawer();
  //               },
  //             );
  //           },
  //         ),
  //         title: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text('Bulldog on Board'),
  //             SizedBox(width: 10),
  //             Icon(Icons.home),
  //           ],
  //         ),
  //         actions: [
  //           IconButton(
  //             icon: Icon(Icons.search),
  //             onPressed: () {
  //               // Handle search action
  //             },
  //           ),
  //         ],
  //       ),
  //       body: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.all(20.0),
  //             child: Row(
  //               children: [
  //                 Icon(Icons.apartment),
  //                 SizedBox(width: 10),
  //                 Text(
  //                   'Housing',
  //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           SizedBox(height: 10),
  //           _buildHouseCard(
  //             context,
  //             'Bluestone Lofts, Duluth, 55811',
  //             '1BHK+1 BED',
  //             '\$817 per month',
  //           ),
  //            SizedBox(height: 10),
  //           _buildHouseCard(
  //             context,
  //             'Villa Hills, Duluth, 55811',
  //             '1BHK+1 BED',
  //             '\$970 per month',
  //           ),
            
  //         ],
  //       ),
        
  //       bottomNavigationBar: BottomAppBar(
  //         color: Colors.blue,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: [
  //             IconButton(
  //               icon: Icon(Icons.home, color: Colors.white),
  //               onPressed: () {
  //                 // Navigate to Housing screen or perform action
  //               },
  //             ),
  //             IconButton(
  //               icon: Icon(Icons.fastfood, color: Colors.white),
  //               onPressed: () {
  //                 // Navigate to Food screen or perform action
  //               },
  //             ),
  //             IconButton(
  //               icon: Icon(Icons.flight, color: Colors.white),
  //               onPressed: () {
  //                 // Navigate to Travel screen or perform action
  //               },
  //             ),
  //             IconButton(
  //               icon: Icon(Icons.library_books, color: Colors.white),
  //               onPressed: () {
  //                 // Navigate to Other Information screen or perform action
  //               },
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }

  //   Widget _buildHouseCard(BuildContext context, String location, String details, String price) {
  //     return Padding(
  //       padding: const EdgeInsets.all(20.0),
  //       child: Card(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         elevation: 4,
  //         child: Padding(
  //           padding: const EdgeInsets.all(16.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Text(
  //                     'Available Now',
  //                     style: TextStyle(
  //                       color: Colors.green,
  //                       fontWeight: FontWeight.bold,
  //                     ),
  //                   ),
  //                   Icon(Icons.bookmark, color: Colors.green),
  //                 ],
  //               ),
  //               SizedBox(height: 10),
  //               Text(
  //                 location,
  //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //               ),
  //               SizedBox(height: 5),
  //               Text(
  //                 details,
  //                 style: TextStyle(fontSize: 16),
  //               ),
  //               SizedBox(height: 5),
  //               Text(
  //                 price,
  //                 style: TextStyle(fontSize: 16),
  //               ),
  //               SizedBox(height: 10),
  //               ElevatedButton(
  //                 onPressed: () {
  //                   // Handle "Read More" button action
  //                 },
  //                 child: Text('Read More'),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     );
  //   }
  // }














  import 'package:flutter/material.dart';

  void main() => runApp(const MyApp());

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

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
              Text('Bulldog on Board', style:TextStyle(color:Colors.yellow,),),
              SizedBox(width: 10),
              //Icon(Icons.apartment),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home, color:Colors.yellow),
              onPressed: () {
                // Handle home icon action
              },
            ),
          ],
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
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.apartment, color: Colors.black, size:40),
                onPressed: () {
                  // Navigate to Housing screen or perform action
                },
              ),
              IconButton(
                icon: Icon(Icons.fastfood, color: Colors.black, size:40),
                onPressed: () {
                  // Navigate to Food screen or perform action
                },
              ),
              IconButton(
                icon: Icon(Icons.directions_bus, color: Colors.black, size:40), // Changed to bus icon
                onPressed: () {
                  // Navigate to Travel screen or perform action
                },
              ),
              IconButton(
                icon: Icon(Icons.info, color: Colors.black, size:40),
                onPressed: () {
                  // Navigate to Other Information screen or perform action
                },
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


