import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/common_widget.dart';
import '../const/text_const.dart';
import 'product_screen.dart';

Widget cuisineScroller(bContext) {
  return SizedBox(
    height: MediaQuery.of(bContext).size.height * .28,
    child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2.85,
            child: Center(
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Column(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 40,
                            ),
                            vSpacer(5),
                            const Text("ABC")
                          ],
                        ),
                        vSpacer(10),
                        Column(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 40,
                            ),
                            vSpacer(5),
                            const Text("ABC")
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return hSpacer(10);
                  },
                  itemCount: 20),
            ),
          );
        }),
  );
}

Widget headingText(String myText) {
  return Text(
    myText,
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Widget recommendationSlider() {
  return Container(
    height: 300,
    // color: Colors.amber,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: 200,
            width: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[800],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                TextConstant().bestSeller,
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                vSpacer(5),
                Text(TextConstant().demo),
                vSpacer(5),
                Row(
                  children: [
                    Text(TextConstant().aed),
                    hSpacer(5),
                    const Text("2,329.0",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "3999.0",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    hSpacer(5),
                    const Text(
                      "41% OFF",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                vSpacer(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          TextConstant().express,
                          style: const TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                    hSpacer(3),
                    ratingWidget(4.4),
                    const Text("(1.5K)")
                  ],
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget megaDealWidget(BuildContext context) {
  return Container(
    color: Colors.yellow[200],
    height: MediaQuery.of(context).size.height * .55,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                headingText(TextConstant().megaDeals),
                const Icon(Icons.watch_rounded),
                Text(
                  TextConstant().two4hours,
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            vSpacer(10),
            Row(
              children: [
                dealCard(context),
                dealCard(context),
              ],
            ),
            Row(
              children: [
                dealCard(context),
                dealCard(context),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget specialScroller(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Get.to(const ProductScreen());
    },
    child: SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.orange[900],
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .3,
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.grey)),
                    vSpacer(8),
                    const Text(
                      "From 10AED",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    const Text(
                      "Yoga Equipment",
                      style: TextStyle(color: Colors.white),
                    ),
                    vSpacer(8),
                  ],
                )),
          );
        },
      ),
    ),
  );
}

Widget deliverTo() {
  return Row(
    children: [
      Icon(Icons.location_on_outlined),
      Text(TextConstant().deliverTo),
      Text(
        " Dubai",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      hSpacer(3),
      Icon(Icons.arrow_drop_down_outlined)
    ],
  );
}
