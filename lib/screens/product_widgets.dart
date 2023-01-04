import 'package:flutter/material.dart';
import 'package:noon/const/text_const.dart';

import '../const/common_widget.dart';

Widget circleButtons(var sym) {
  return CircleAvatar(
    backgroundColor: Colors.grey[300],
    child: Text(
      sym,
      style: const TextStyle(
          color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

Widget cartController(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(),
    height: MediaQuery.of(context).size.height * .07,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          circleButtons('-'),
          hSpacer(5),
          const Text(
            "1",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          hSpacer(5),
          circleButtons('+'),
          hSpacer(10),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              height: 50,
              width: 100,
              child: Center(
                  child: Text(
                TextConstant().addToCart,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    ),
  );
}

Widget starsAndWidget() {
  return Row(
    children: const [
      Icon(
        Icons.star,
        color: Colors.orange,
        size: 15,
      ),
      Text("4.8 ",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
      Text(
        " (8 reviews)",
        style: TextStyle(color: Colors.grey),
      )
    ],
  );
}

Widget manInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: const [
          Text(
            "Sold by ",
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            "Noon Grocery",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      const Icon(Icons.arrow_right)
    ],
  );
}
