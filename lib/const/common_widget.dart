import 'package:flutter/material.dart';
import 'package:noon/const/text_const.dart';

SizedBox vSpacer(double reqHeight) {
  return SizedBox(height: reqHeight);
}

SizedBox hSpacer(double reqwidth) {
  return SizedBox(width: reqwidth);
}

Container ratingWidget(num nosStar) {
  return Container(
    height: 20,
    width: 55,
    decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          nosStar.toStringAsFixed(1),
          style: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.star,
          size: 15,
          color: Colors.white,
        )
      ],
    ),
  );
}

Widget dealCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.width / 2 - 19,
        width: MediaQuery.of(context).size.width / 2 - 19,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TextConstant().mobileName),
            Row(
              children: const [
                Text(
                  "279",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey),
                ),
                Text("192 AED",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            )
          ],
        )),
  );
}
