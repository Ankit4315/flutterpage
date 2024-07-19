import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => LoginPage(),
        '/login/name': (context) => const NamePage(),
      },
    );
  }
}

// This widget is the root of your application.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Stack(children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'images/img.jpg',
            fit: BoxFit.cover,
            width: 250,
            height: 450,
          ),
        ),
        const Positioned(
          top: 150,
          left: 70,
          child: Text(
            'ANKTALK',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const Positioned(
          bottom: 120,
          left: 0,
          right: 0,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "oBNSDFSGF\nKJFBs kbsGF\nKBSFKGNsgfnSBGFskgf\n[[s'gfbkSNBGFKsngfvGFVKfgvbFVBs\nfbjKBSfbvkBFVKsbfbKFBDkfbDKNBKDbfkdbf",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                ),
              )),
        ),
        const Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "© Copyright 2024",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                ),
              )),
        ),
        Positioned(
          bottom: 60,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Navigate to LoginPage
              },
              child: const Text('Go to Login Page'),
            ), // Closing for ElevatedButton
          ), // Closing for Align
        ),
      ]))),
    );
  }
}

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  get floatingActionButton => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'images/img.jpg',
                  fit: BoxFit.cover,
                  width: 250,
                  height: 450,
                ),
              ),
              const Positioned(
                bottom: 390,
                left: 65,
                child: Text(
                  'ANKTALK',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors
                                .black26, // Semi-transparent light black color
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Username',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                              ),
                              obscureText: true,
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Handle login logic here
                              },
                              child: const Text('Login'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 90,
                left: 150,
                child: Align(
                  // alignment: Alignment.center,
                  child: Text(
                    "Forget password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NamePage()),
                      );
                    },
                    child: const Text('Go to Name Suggestion Page'),
                  ), // Closing for ElevatedButton
                ), // Closing for Align
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'images/img.jpg',
                  fit: BoxFit.cover,
                  width: 250,
                  height: 450,
                ),
              ),
              const Positioned(
                bottom: 410,
                left: 65,
                child: Text(
                  'ANKTALK',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            const Text(
                              'Human Name Suggestion',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 0.4),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Starting Alphabet',
                              ),
                            ),
                            const SizedBox(height: 0.4),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Gender',
                              ),
                            ),
                            const SizedBox(height: 0.4),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Length of Name',
                              ),
                            ),
                            const SizedBox(height: 0.4),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'country',
                              ),
                            ),
                            const SizedBox(height: 0.4),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Length of Name',
                              ),
                            ),
                            const SizedBox(height: 0.4),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'country',
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Add your logic here
                              },
                              child: const Text('Suggest Name'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
