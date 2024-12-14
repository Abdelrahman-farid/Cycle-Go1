import 'package:flutter/material.dart';
import 'package:highsea1/firstpage.dart'; // Ensure this is the correct import

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(), // Use MainPage as the home widget
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "   Trips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "   Bicycle",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 40,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              width: 350,
              child: const Text(
                "“Life is like riding a bicycle. To keep your balance, you must keep moving.” — Albert Einstein",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextButton.icon(
                onPressed: () {
                  // Ensure Navigator is used within a MaterialApp context
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Firstpage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                icon: const Icon(Icons.pedal_bike, color: Colors.white),
                label: const Text(
                  "Start Your Trip",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Image.asset(
                "images/welcome-page.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
