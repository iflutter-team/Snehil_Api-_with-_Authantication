import 'package:api/screen/home/home_screen.dart';
import 'package:api/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void  main(){
  runApp(
    const GetMaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    )
  );
}