import 'package:flutter/material.dart';

import 'home.dart';
import 'settings.dart';
import 'sign_in.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF001747),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Padding(
          padding: EdgeInsets.only(right: 45.0),
          child: Center(
            child: Text(
              "About Us",
              style: TextStyle(
                fontFamily: 'Lora',
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF001747),
        child: Column(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/people.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(100, 0, 22, 71),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/dev2.png'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Welcome, Mary!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Lora',
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.home_work_outlined, color: Colors.white),
              hoverColor: const Color.fromARGB(200, 0, 22, 71),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              hoverColor: const Color.fromARGB(200, 0, 22, 71),
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.white),
              hoverColor: const Color.fromARGB(200, 0, 22, 71),
              title: const Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
            ),
            Expanded(
              child: Container(),
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined, color: Colors.white),
              tileColor: const Color.fromARGB(255, 0, 15, 50),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Signin()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Developers",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DeveloperID(
                  imagePath: 'assets/images/dev1.jpg',
                  name: 'Josef Alexander S. Malic',
                ),
                DeveloperID(
                  imagePath: 'assets/images/dev2.png',
                  name: 'Mary Eddythe M. Sornito',
                ),
                DeveloperID(
                  imagePath: 'assets/images/dev3.jpg',
                  name: 'Kyle G. Velez',
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/edithorial-logo1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your trusted companion in staying informed.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'As a reliable news application, we are committed to delivering accurate, up-to-date news from around the world. With a focus on credibility and trustworthiness, we curate diverse news stories, offering a comprehensive view of current events, politics, technology, entertainment, and more. Our platform ensures that users receive factual information, empowering them to make informed decisions and stay updated in an ever-evolving world.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeveloperID extends StatelessWidget {
  final String imagePath;
  final String name;

  // ignore: use_key_in_widget_constructors
  const DeveloperID({
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
              fontSize: 8, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
