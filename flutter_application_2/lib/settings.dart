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
        title: Text('Settings'),
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
                  onChanged: (value) => setState(() => _isEmailNotification = value),
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
                          MaterialPageRoute(builder: (context) => PrivacyPage()),
                        );
                      },
                      child: Text(
                        'Privacy Policy',
                        // Change the color of the TextButton
                        style: TextStyle(color: const Color.fromARGB(237, 152, 3, 3)),
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
                        style: TextStyle(color: const Color.fromARGB(237, 152, 3, 3)),
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
        title: Text('Privacy Policy'),
      ),
      body: Center(
        child: Text('Privacy Policy content goes here'),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text('About content goes here'),
      ),
    );
  }
}
