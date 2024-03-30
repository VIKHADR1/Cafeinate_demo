import 'package:flutter/material.dart';
import 'notification_page.dart';
import 'favourite_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String button1 = '#Minimalist';
  String button2 = '#Korean';
  String searchText = '';
  bool showMinimalistImages = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // Wrap everything in a Column
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        searchText = '';
                      });
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/tumblr_d9bedef29fb87de7215092060e440e16_18aebf5a_1280.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showMinimalistImages = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Text(button1),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(button2),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Add your additional widgets below the Row
            if (showMinimalistImages)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/tumblr_8cadc6329c0b7c676a4f646f5dd2f34f_66b85fca_1280.jpg',
                    width: 250,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'images/366ffb9daeea98944c825c97db94d77f.jpg',
                    width: 250,
                  ),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Favourite",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(Icons.notifications),
          ),
        ],
        onTap: (index) {
          // Handle navigation based on the selected index
          switch (index) {
            case 0:
              // Navigate to Home page (presumably you're already on the Home page)
              break;
            case 1:
              // Navigate to Favourite page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavouritePage()),
              );
              break;
            case 2:
              // Navigate to Notification page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotiPage()),
              );
              break;
          }
        },
      ),
    );
  }
}
