import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Profile Image
                const CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.blueAccent,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                const SizedBox(height: 15),

                // Name & Bio
                const Text('Sehar Fatima',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                Text('Flutter Developer | Web Developer',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700])),

                const Divider(height: 30, thickness: 1, color: Colors.grey),

                // Contact Info
                contactInfo(Icons.phone, '+92 333 8901400', Colors.green),
                contactInfo(Icons.email, 'seharfatima57@gmail.com', Colors.redAccent),

                const SizedBox(height: 15),

                // Social Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialButton(FontAwesomeIcons.facebookF, Colors.blue),
                    socialButton(FontAwesomeIcons.linkedinIn, Colors.blueAccent),
                    socialButton(FontAwesomeIcons.github, Colors.black),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Contact Info Widget
  Widget contactInfo(IconData icon, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  // Social Button Widget
  Widget socialButton(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: color,
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}
