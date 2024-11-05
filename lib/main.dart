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
      'https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_1280.jpg',
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
            SizedBox(
              height: 280,
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
            ListTile(
              leading: const Icon(Icons.gas_meter),
              title: const Text(
                ' Default System Font',
                style: TextStyle(),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: Text(
                'Roboto italic',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.add_shopping_cart_rounded),
              title: Text(
                'Roboto 900',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.catching_pokemon),
              title: Text(
                'Roboto 300',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            // Second Horizontal ListView with Network Images
            const SizedBox(height: 16.0),

            SizedBox(
              height: 280,
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
          ],
        ),
      ),
    );
  }
}
