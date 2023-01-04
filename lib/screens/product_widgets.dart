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

Widget tabView(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .07,
    child: AppBar(
      backgroundColor: Colors.white,
      bottom: const TabBar(
        indicatorColor: Colors.black,
        labelColor: Colors.black,
        // overlayColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(
            text: "Overview",
          ),
          Tab(
            text: "Specifications",
          ),
        ],
      ),
    ),
  );
}

Widget tabViewData(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .2,
    child: const TabBarView(
      children: [
        Center(
          child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ),
        Center(
          child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident,"),
        ),
      ],
    ),
  );
}

Widget userReview() {
  return Row(
    children: [
      const Text("4.8",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
      hSpacer(10),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            ],
          ),
          Text("Based on 8 Ratings")
        ],
      )
    ],
  );
}
