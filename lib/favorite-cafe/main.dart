import 'package:exercise/in_cafe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Favorite(),
    );
  }
}

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite'),
          backgroundColor: Colors.brown,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext contest) =>
                                      const MyAppExt(),
                                ),
                              );
                            },
                            child: Container(
                              width: 400,
                              height: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey),
                              child: Image.asset(
                                'images/2.jpg',
                                // width: 400,no need
                                // height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 197, 58, 48),
                              size: 30,
                            ),
                          ),
                          const Positioned(
                            top: 10,
                            left: 20,
                            child: Text(
                              'Lalita Cafe',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'San Francisco',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 400,
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey),
                            child: Image.asset(
                              'images/Cat.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 204, 55, 44),
                              size: 30,
                            ),
                          ),
                          const Positioned(
                            top: 10,
                            left: 10,
                            child: Text(
                              'Cat n A cup',
                              style: TextStyle(
                                  fontFamily: 'San Francisco',
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
