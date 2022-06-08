import 'dart:async';

import 'package:final_project/constants/r.dart';
import 'package:final_project/view/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String route = "splash_screen";

  @override
  Widget build(BuildContext context) {
    //Create Timer splashscreen
    Timer(const Duration(seconds: 3), () {
      //Push navigator normal
      //   Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (context) => LoginPage()));

      //push navigator with named routing
      Navigator.of(context).pushReplacementNamed(LoginPage.route);
    });

    return Scaffold(
      backgroundColor: R.colors.primary,
      body: Center(
        child: Image.asset(R.assets.icSplash),
      ),
    );
  }
}
