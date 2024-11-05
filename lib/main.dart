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
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/image1.png',
      'assets/images/image2.png',
      'assets/images/image3.png',
    ];

    final List<String> imageUrls = [
      'https://cdn.pixabay.com/photo/2021/05/09/06/07/dog-6240043_1280.jpg',
      'https://www.pexels.com/photo/two-yellow-labrador-retriever-puppies-1108099/',
      'https://cdn.pixabay.com/photo/2017/01/06/19/15/soap-bubble-1958650_1280.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Images and Assets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // First Horizontal ListView with Asset Images
            const Text(
              'Horizontal List 1 - Asset Images',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 280, // Adjusted height for images and text
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Image.asset(
                          imagePaths[index],
                          width: 240,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                      ],
                    ),
                  );
                },
              ),
            ),

            // List Tiles between horizontal lists
            const SizedBox(height: 16.0),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('ListTile 1'),
              subtitle: Text('Description of ListTile 1'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('ListTile 2'),
              subtitle: Text('Description of ListTile 2'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('ListTile 3'),
              subtitle: Text('Description of ListTile 3'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('ListTile 4'),
              subtitle: Text('Description of ListTile 4'),
            ),

            // Second Horizontal ListView with Network Images
            const SizedBox(height: 16.0),
            const Text(
              'Horizontal List 2 - Network Images',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 280, // Adjusted height for images and text
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      imageUrls[index],
                      width: 240,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),

            // Additional Vertical ListTiles
            const SizedBox(height: 16.0),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Vertical Item 1'),
              subtitle: Text('Description of Item 1'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Vertical Item 2'),
              subtitle: Text('Description of Item 2'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Vertical Item 3'),
              subtitle: Text('Description of Item 3'),
            ),
          ],
        ),
      ),
    );
  }
}
