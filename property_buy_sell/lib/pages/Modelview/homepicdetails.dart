// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'package:property_buy_sell/color/colors.dart';

class Picdetails extends StatelessWidget {
  final String name;
  final String location;
  final String amount;
  final String image;

  const Picdetails({
    Key? key,
    required this.name,
    required this.location,
    required this.amount,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: MediaQuery.of(context).size.width,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            // child: Image(
            //   image: NetworkImage(
            //     image,
            //   ),
            //   fit: BoxFit.cover,
            // ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Spacer(),
                    Text(
                      amount,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .apply(color: themeoficont),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Elusive.location,
                      color: Colors.blueGrey[800],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(location)
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesome.bed,
                      color: Colors.blueGrey[800],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "3 Beds",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesome5.bath,
                      color: Colors.blueGrey[800],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "2 Baths",
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
