import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const LoginScreenView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("HOMESTAY RAYA",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              Text(
                'Book your homestay now!',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
              ),
              CircularProgressIndicator(),
              Text("Version 0.1b")
            ]),
      ),
    );
  }
}
