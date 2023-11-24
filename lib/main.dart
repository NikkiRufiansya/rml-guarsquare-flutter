import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rml_guardsqure_flutter/view/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

import 'view/login_screen.dart';

bool detected = false;

@pragma("vm:entry-point", "call")
my_callback() {
  print("jailbreak detected from flutter");
  detected = true;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg, duration: duration, gravity: gravity);
  }

  Future<void> checkJwt() async {
    final prefs = await SharedPreferences.getInstance();
    final jwtToken = prefs.getString("jwt_token");
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        print("detected :: $detected");
        if (detected == true) {
          Toast.show("jailbreak detected",
              duration: Toast.lengthShort, gravity: Toast.bottom);
          Future.delayed(const Duration(seconds: 4), () {
            exit(0);
          });
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        // if (jwtToken != null) {
        //   Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(builder: (context) => const HomeScreen()),
        //   );
        // } else {
        //   Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(builder: (context) => const HomeScreen()),
        //   );
        // }
      },
    );
    checkJwt();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Image.asset("assets/rml-logo.png")),
    );
  }
}
