import 'package:flutter/material.dart';
import 'package:my_cafe/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Text editing controllers for username, email, and password
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: SizedBox(
              width: 350,
              
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            ),
            ),
            const SizedBox(height: 20.0,),
            Center(
            child: SizedBox(
              width: 350,
              
          child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Center(
            child: SizedBox(
              width: 350,
              
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            ),
            ),
            const SizedBox(height: 20.0,),
            Center(
            child: SizedBox(
              width: 350,
              
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            ),
            ),
            const SizedBox(height: 20.0,), // Add spacing between text fields and buttons
          Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
             children: [
                
            SizedBox(
              width: 350,
              height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                
              ),
              child: const Text('Login'),
            ),
            ),
            const SizedBox(height: 20.0,),
            SizedBox(
              width: 350,
              height: 40.0,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                
              ),
              child: const Text('Sign Up'),
            ),
            ),
            
            ]

              ),
            ),
            )
            
          ],
        ),
      ),
    );
  }
}
