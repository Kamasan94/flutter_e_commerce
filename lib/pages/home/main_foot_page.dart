import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_e_commerce/pages/home/food_page_body.dart';
import 'package:food_e_commerce/utils/dimensions.dart';
import 'package:food_e_commerce/widgets/big_text.dart';
import 'package:food_e_commerce/widgets/small_text.dart';
import '../../utils/colors.dart';


class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current heigth is "+ MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(top:Dimensions.height45, bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Bhutan", color: AppColors.mainColor, size: 30,),
                        Row(
                          children: [
                            SmallText(text: "Thimphu", color: Colors.black54),
                            const Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.height45,
                        height: Dimensions.height45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                        child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                      ),
                    )
                  ],
                ),
              ),
            ),//Header
            Expanded(child: SingleChildScrollView(
              child: FoodPageBody(),
            )),
          ],
        ),
    );
  }
}
