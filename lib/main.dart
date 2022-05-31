import 'package:flutter/material.dart';
import 'package:food_e_commerce/pages/food/popular_food_detail.dart';
import 'package:food_e_commerce/pages/food/recommended_food_detail.dart';
import 'package:food_e_commerce/pages/home/main_foot_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: RecommendedFoodDetail(),
    );
  }
}


