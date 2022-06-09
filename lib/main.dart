import 'package:flutter/material.dart';
import 'package:food_e_commerce/controllers/populer_product_controller.dart';
import 'package:food_e_commerce/controllers/recommended_product_controller.dart';
import 'package:food_e_commerce/pages/food/popular_food_detail.dart';
import 'package:food_e_commerce/pages/food/recommended_food_detail.dart';
import 'package:food_e_commerce/pages/home/food_page_body.dart';
import 'package:food_e_commerce/pages/home/main_foot_page.dart';
import 'package:food_e_commerce/routes/route_helper.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //find a controller and access the method
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}


