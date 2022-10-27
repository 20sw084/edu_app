import 'package:edu_app/View/ThirdScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Card(
            child: Text(
              "Choose your account type?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/images/guard.png"),
              title: const Text(
                'Parent/Guardian',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              subtitle: const Text(
                'Explore and apply yourself and on your kids behalf.',
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/images/guard.png"),
              title: const Text(
                'MySelf',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              subtitle: const Text('Explore and apply yourself only.'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
