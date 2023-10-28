import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rml_guardsqure_flutter/view/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'view/login_screen.dart';


@pragma("vm:entry-point", "call")
my_callback() {
  print("jailbreak detected from flutter");
  //detected = true;
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Future<void> checkJwt() async {
    final prefs = await SharedPreferences.getInstance();
    final jwtToken = prefs.getString("jwt_token");
    Timer(
      const Duration(seconds: 1),
      () {
        if (jwtToken != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }
      },
    );
    
  }

  @override
  void initState() {
    super.initState();
    checkJwt();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset("assets/rml-logo.png")
      ),
    );
  }
}
