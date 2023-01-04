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

Widget mySearchBar() {
  return Container(
    height: 50,
    width: double.infinity,
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey)),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Text(
            TextConstant().lookingFor,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    ),
  );
}

Widget priceInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // crossAxisAlignment: Cros,
            children: const [
              Text("AED 9.65 ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Text(
                "AED 9.65",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough, color: Colors.grey),
              ),
            ],
          ),
          Text(
            TextConstant().vat,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
      Container(
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "70% off",
              style: TextStyle(color: Colors.white),
            )),
      )
    ],
  );
}
