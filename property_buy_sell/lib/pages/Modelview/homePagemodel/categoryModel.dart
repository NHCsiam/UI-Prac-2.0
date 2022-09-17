import 'package:flutter/material.dart';
import 'package:property_buy_sell/color/colors.dart';

class Buttons extends StatelessWidget {
  final IconData icondata;
  final String title;
  const Buttons({
    Key? key,
    required this.icondata,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: themeWhite,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: const Offset(5, 5)),
              ],
            ),
            child: Icon(
              icondata,
              color: themeoficont,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
