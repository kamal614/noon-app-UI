import 'package:flutter/material.dart';
import 'package:noon/const/text_const.dart';

import 'home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cuisineScroller(context),
                headingText(TextConstant().recommeded),
                recommendationSlider(),
              ],
            ),
          ),
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
    );
  }
}
