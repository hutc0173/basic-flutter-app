import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 1'),
              subtitle: Text('Description of Item 1'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 2'),
              subtitle: Text('Description of Item 2'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 3'),
              subtitle: Text('Description of Item 3'),
            ),
            // Add more ListTile widgets if needed
          ],
        ),
      ),
    );
  }
}
