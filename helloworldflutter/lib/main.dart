import 'package:flutter/material.dart';
import 'package:helloworldflutter/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile Task',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Task'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[300],
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                        image: const AssetImage('assets/images/profilePicture.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                const SizedBox(height: 50.0),
                Text(
                  'Muhammad Syams Ragibavi',
                  style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '@NeoUdean',
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailPage()),
                    );
                  },
                  child: const Text(
                    'View Details',
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}