import 'package:cc206_magic_calculator_malic_sornito_velez/features/article.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Lora',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF001747),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, size: 16),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: SettingsContent(),
        ),
      ),
    );
  }
}

class SettingsContent extends StatelessWidget {
  const SettingsContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.sunny),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Dark mode',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SpaceMono",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Icon(Icons.verified_user_rounded),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SpaceMono",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Icon(Icons.password),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SpaceMono",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Language',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SpaceMono",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
