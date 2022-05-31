import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_e_commerce/widgets/app_icon.dart';
import 'package:food_e_commerce/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_column.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food1.png"
                    )
                  )
                ),
              )),
          //icon widgets
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],

          )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Hamburger",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded( child:SingleChildScrollView(child: ExpandableTextWidget(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vehicula sagittis felis, sit amet fringilla ante pulvinar quis. Sed pulvinar commodo tincidunt. Praesent eleifend nibh risus, non egestas augue tempus id. Integer posuere turpis sit amet dapibus eleifend. Sed at vulputate lorem, id volutpat arcu. Suspendisse sed nisl felis. Vestibulum dapibus turpis neque, eleifend tempus ex tristique quis. Vivamus sem nulla, condimentum sed sapien ut, fermentum malesuada sem. Etiam feugiat dapibus mi, nec elementum risus dictum at. Pellentesque fringilla diam sed ex laoreet, vitae pretium elit dignissim. In commodo massa sit amet dolor maximus, id aliquam metus placerat. Donec in posuere lacus.Phasellus bibendum lectus tincidunt, dapibus felis eu, sollicitudin eros. In vel ante ac sapien commodo porttitor. Praesent sit amet leo sodales, laoreet lorem vel, iaculis nisi. Vestibulum sed porttitor lacus. Nam consequat lacus magna, sit amet consectetur turpis venenatis sed. Mauris suscipit nisi nunc, in finibus ligula auctor sit amet. Ut a erat quam. Nulla vestibulum pellentesque fringilla. Phasellus non augue nulla. Pellentesque a vestibulum tortor. Nunc pretium magna at magna facilisis, vel malesuada justo accumsan. Donec aliquet elit sapien, nec elementum neque viverra sit amet. Phasellus efficitur suscipit ipsum et molestie. Etiam malesuada, lectus semper pretium sagittis, augue nisi ornare erat, eget ultricies nulla odio ac mi. Mauris vel ornare lorem. Phasellus sed lorem at ex euismod molestie hendrerit sit amet mauris. " ))),
                  ],
                )
              )),
          //expandable text widget


        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width30),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
