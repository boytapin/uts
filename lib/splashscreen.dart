import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/main.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ Key? key }) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 2);

    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginDemo();
        })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network("https://www.pngplay.com/wp-content/uploads/5/Welcome-Download-Free-PNG.png",
          width: 200,
          height: 88,
        ),
      ),
    );
  }
}