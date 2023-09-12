import 'package:esm/Models/shop_model.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShopState();
  }
}

class ShopState extends State<ShopScreen> {
  List<ShopModel> shoppingList = [
    ShopModel(
        image: "assets/images/product_dummy_img.png",
        productName: "Vila stripe shirt dress",
        productPrice: "50.00",
        reviews: "8",
        sellerMail: "johndoe@gmail.com",
        sellerContact: "+123211000"),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(
          child: GridView.builder(
              itemCount: shoppingList.length,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                ShopModel shopping = shoppingList[index];

                return GestureDetector(
                  onTap: (){


                  },
                  child: Container(
                    height: 350,
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(

                            shopping.image,
                           height: 170,
                            fit: BoxFit.fitHeight,
                          ),

                          AppText(
                            shopping.productName,
                            size: 14,
                            fontWeight: FontWeight.w300,
                            color: AppColors.black,
                          ),
                          Row(
                            children: [
                              AppText(
                                shopping.productPrice,
                                size: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColors.black,
                              ),
                            ],
                          ),
                          Row(
                            children: [

                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                );

              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ))),
    );
  }
}
