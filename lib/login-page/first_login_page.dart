import 'package:flutter/material.dart';
import 'package:my_cafe/login_page.dart';
import 'package:my_cafe/sign_up_page.dart';

class FirstLoginPage extends StatefulWidget {
  const FirstLoginPage({Key? key}) : super(key: key);

  @override
  _FirstLoginPageState createState() => _FirstLoginPageState();
}

class _FirstLoginPageState extends State<FirstLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      backgroundColor: const Color(0xFCF9F9F9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( 
                        'Caffeinate', 
                         style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
             ),
            const SizedBox(height: 400.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  const SizedBox(height: 20.0),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
