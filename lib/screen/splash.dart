import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../config/colors.dart';
import 'package:get/get.dart';
import './Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(Login());
    });
    return Scaffold(
      backgroundColor: GlobalColors.primaryColor,
      body: Center(
        child: Text(
          'Amategeko',
          style: TextStyle(
              color: GlobalColors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
