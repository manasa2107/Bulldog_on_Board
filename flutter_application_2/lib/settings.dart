import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double _fontSize = 16.0;
  bool _isDarkTheme = false;
  bool _isEmailNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(237, 152, 3, 3),
      ),
      // Change the backgroundColor of the Scaffold
      backgroundColor: const Color.fromARGB(255, 255, 204, 51),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Font Size'),
                    Slider(
                      value: _fontSize,
                      min: 12.0,
                      max: 24.0,
                      divisions: 4,
                      onChanged: (value) => setState(() => _fontSize = value),
                      // Change the color of the Slider
                      activeColor: const Color.fromARGB(237, 152, 3, 3),
                    ),
                  ],
                ),
                SwitchListTile(
                  title: Text('Dark Theme'),
                  value: _isDarkTheme,
                  onChanged: (value) => setState(() => _isDarkTheme = value),
                  activeTrackColor: const Color.fromARGB(237, 152, 3, 3),
                ),
                SwitchListTile(
                  title: Text('Email Notifications'),
                  value: _isEmailNotification,
                  onChanged: (value) =>
                      setState(() => _isEmailNotification = value),
                  activeTrackColor: const Color.fromARGB(237, 152, 3, 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Privacy link navigation
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrivacyPage()),
                        );
                      },
                      child: Text(
                        'Privacy Policy',
                        // Change the color of the TextButton
                        style: TextStyle(
                            color: const Color.fromARGB(237, 152, 3, 3)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle About link navigation
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        );
                      },
                      child: Text(
                        'About',
                        // Change the color of the TextButton
                        style: TextStyle(
                            color: const Color.fromARGB(237, 152, 3, 3)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(237, 152, 3, 3),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0), // Reduces the top padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // Ensures alignment stretch across the screen
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20), // Padding inside the container
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.8), // Semi-transparent white background
                  borderRadius:
                      BorderRadius.circular(10), // Optional: rounded corners
                ),
                child: Text(
                  'Your privacy is important to us. Bulldog on Board ("we," "us," "our") is committed to protecting your privacy while you use our app. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our mobile application. Please take some time to read through it carefully.',
                  textAlign:
                      TextAlign.center, // Center the text inside the container
                  style: TextStyle(
                    color: Colors
                        .black, // Ensuring the text color is readable against the light background
                    fontSize: 16, // Optional: set the font size
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(237, 152, 3, 3),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0), // Reduces the top padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // Ensures alignment stretch across the screen
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20), // Padding inside the container
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.8), // Semi-transparent white background
                  borderRadius:
                      BorderRadius.circular(10), // Optional: rounded corners
                ),
                child: Text(
                  'Navigating through university life itself is hard, think of the students who go to the other side of the country or sometimes globe for university. This app is focused on  helping with the transition to university life and help with a lot of things starting from finding housing to finding a nearby mexican grill. ',
                  textAlign:
                      TextAlign.center, // Center the text inside the container
                  style: TextStyle(
                    color: Colors
                        .black, // Ensuring the text color is readable against the light background
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
