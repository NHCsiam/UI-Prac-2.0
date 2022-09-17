// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:property_buy_sell/color/colors.dart';
import 'Modelview/homePagemodel/categoryModel.dart';
import 'Modelview/homepicdetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top SECTION
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Location",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesome.location,
                      color: themeoficont,
                    ),
                    Text(
                      "Dhaka",
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print('balsal');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: themeWhite,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(5, 5)),
                          ],
                        ),
                        child: Icon(
                          FontAwesome.bell_alt,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                //Category section
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Buttons(
                        title: "Buy Apartment",
                        icondata: FontAwesome.building,
                      ),
                      Buttons(
                        title: "House",
                        icondata: FontAwesome.home,
                      ),
                      Buttons(
                        title: "Rent Apartment",
                        icondata: ModernPictograms.home,
                      ),
                      Buttons(
                        title: "Condo",
                        icondata: Brandico.houzz,
                      ),
                      Buttons(
                        title: "Buy Apartment",
                        icondata: FontAwesome.building,
                      ),
                      Buttons(
                        title: "House",
                        icondata: FontAwesome.home,
                      ),
                      Buttons(
                        title: "Rent Apartment",
                        icondata: ModernPictograms.home,
                      ),
                      Buttons(
                        title: "Condo",
                        icondata: Brandico.houzz,
                      ),
                      // Buttons(title: "", icondata: FontAwesome.home,),
                      // Buttons(),
                    ],
                  ),
                ),
                // IMAGE SECTION
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Recomended",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Spacer(),
                    Text(
                      "More",
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Picdetails(
                  name: "Condo",
                  amount: "\$200/month",
                  location: "Niketon, Block-A",
                  image:
                      "https://images.unsplash.com/photo-1586381084141-6ab5237379bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8",
                ),
                SizedBox(
                  height: 20,
                ),
                Picdetails(
                  name: "Apartment",
                  amount: "\$300/month",
                  location: "Gulshan No.2",
                  image:
                      "https://images.unsplash.com/photo-1582883545851-725a3b9502ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8",
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
