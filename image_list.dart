import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lalilta'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            // height: double.infinity, no need
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/2.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/3.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/4.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/5.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
