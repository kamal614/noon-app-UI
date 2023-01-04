import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noon/const/common_widget.dart';
import 'package:noon/const/text_const.dart';
import 'package:noon/screens/home_widgets.dart';
import 'package:noon/screens/product_widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: cartController(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [Icon(Icons.arrow_back)],
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
            manInfo()
          ],
        ),
      ),
    );
  }
}
