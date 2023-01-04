import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noon/const/common_widget.dart';
import 'package:noon/const/text_const.dart';
import 'package:noon/screens/product_screen.dart';

import 'home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                children: [
                  mySearchBar(),
                  vSpacer(5),
                  deliverTo(),
                  //SLIDER
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cuisineScroller(context),
                  headingText(TextConstant().recommeded),
                  vSpacer(8),
                  GestureDetector(
                      onTap: () {
                        Get.to(const ProductScreen());
                      },
                      child: recommendationSlider()),
                ],
              ),
            ),
            vSpacer(8),
            megaDealWidget(context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    TextConstant().treatSpecial,
                    style: TextStyle(
                        color: Colors.orange[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  specialScroller(context)
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
