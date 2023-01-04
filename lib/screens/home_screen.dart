import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noon/const/common_widget.dart';
import 'package:noon/const/text_const.dart';
import 'package:noon/screens/product_screen.dart';

import 'home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   bottom: TabBar(
        //     indicatorColor: Colors.black,
        //     labelColor: Colors.black,
        //     unselectedLabelColor: Colors.grey,
        //     tabs: [
        //       Tab(
        //         icon: Visibility(
        //             visible: screenAtTop,
        //             child: const Icon(Icons.sports_basketball)),
        //         text: "noon",
        //       ),
        //       Tab(
        //         icon: Icon(Icons.food_bank),
        //         text: "Food",
        //       ),
        //       Tab(
        //         icon: Icon(Icons.hub_rounded),
        //         text: "Grocery",
        //       ),
        //       Tab(
        //         icon: Icon(Icons.cloud_circle),
        //         text: "Minutes",
        //       ),
        //     ],
        //   ),
        // ),

        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.sports_basketball,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.food_bank,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.hub_rounded,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.cloud_circle,
                    color: Colors.black,
                  ),
                ],
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              snap: true,
              bottom: const TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "noon",
                  ),
                  Tab(
                    text: "Food",
                  ),
                  Tab(
                    text: "Grocery",
                  ),
                  Tab(
                    text: "Minutes",
                  ),
                ],
              ),
            )
          ],
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
        ),
      ),
    );
  }
}
