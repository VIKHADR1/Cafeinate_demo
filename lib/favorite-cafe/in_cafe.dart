import 'package:exercise/image_list.dart';
import 'package:exercise/details.dart';
import 'package:exercise/shop_info.dart';
import 'package:flutter/material.dart';

class MyAppExt extends StatefulWidget {
  const MyAppExt({super.key});

  @override
  State<MyAppExt> createState() => Home();
}

class Home extends State<MyAppExt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lalita'),
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              // Add your onPressed functionality here
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Info(),
                ),
              );
            },
          ),
        ],
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ImageList(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/1.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ImageList(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/2.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ImageList(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/3.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ImageList(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/4.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Details(),
                            ),
                          );
                        },
                        child: const Text('Cappucino'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {},
                        child: const Text('Latte'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {},
                        child: const Text('Americano'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {},
                        child: const Text('Espresso'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {},
                        child: const Text('Mocha'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      height: 240,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 183, 179, 179),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 183, 179, 179),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Details(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'images/Cappucino.jpg',
                              width: 150,
                              height: 180,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Cappucino',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 240,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 183, 179, 179),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 183, 179, 179),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'images/Americano.jpg',
                            width: 150,
                            height: 180,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Americano',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      height: 240,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 183, 179, 179),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 183, 179, 179),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'images/Latte.jpg',
                            width: 150,
                            height: 180,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Latte',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 240,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 183, 179, 179),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 183, 179, 179),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'images/Espresso.jpg',
                            width: 150,
                            height: 180,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Espresso',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite_outline_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
