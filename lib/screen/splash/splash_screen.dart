import 'dart:async';

import 'package:api/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
      Get.off(()=>const Home());
      //Get.offAll(() => !isLogin ? Login() : const Home());
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(Icons.account_circle,size: 100,),
      ),
    );
  }
}