import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noon/const/common_widget.dart';
import 'package:noon/const/text_const.dart';
import 'package:noon/screens/home_widgets.dart';
import 'package:noon/screens/product_widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: cartController(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back))
                  ],
                ),
                mySearchBar(),
                Container(
                  color: Colors.purple,
                  height: 50,
                ),
                Container(
                  height: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                ),
                vSpacer(8),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Colgate",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      vSpacer(5),
                      headingText("Optic White Toothpaste"),
                      vSpacer(8),
                      starsAndWidget(),
                      vSpacer(10),
                      const Text("75 ml"),
                      vSpacer(10),
                      priceInfo(),
                      manInfo(),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .1,
                  color: Colors.black,
                ),
                vSpacer(15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .1,
                    color: Colors.yellow,
                  ),
                ),
                tabView(context),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      tabViewData(context),
                      vSpacer(20),
                      headingText(TextConstant().userReviews),
                      userReview(),
                      vSpacer(10),
                      const Text(
                          "There are 8 customer ratings and 1 customer review"),
                    ],
                  ),
                ),
                vSpacer(15)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
