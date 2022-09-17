// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:property_buy_sell/models/onboardingmodel.dart';
import 'package:property_buy_sell/pages/homepage.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  final PageController _controller = PageController(initialPage: 0);
  int indx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: datamodels
                    .map(
                      (datamodels) => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.only(right: 12),
                        height: datamodels.count == indx ? 22 : 12,
                        width: datamodels.count == indx ? 22 : 12,
                        decoration: BoxDecoration(
                          color: datamodels.count == indx
                              ? Colors.blue[900]
                              : Colors.blue[200],
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue[900],
              onPressed: () {
                if (indx == datamodels.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Icon(Icons.navigate_next_outlined),
            ),
          ],
        ),
        body: PageView.builder(
          controller: _controller,
          onPageChanged: (int index) {
            setState(() {
              indx = index;
            });
          },
          itemCount: datamodels.length,
          itemBuilder: (context, index) {
            return SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Center(
                      child: Image(
                        image: AssetImage(datamodels[index].imgpath),
                        height: 220,
                        width: 420,
                      ),
                    ),
                    Text(
                      datamodels[index].title,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    // ignore: unnecessary_const
                    Opacity(
                      opacity: 0.6,
                      child: Text(
                        datamodels[index].sub,
                        style: TextStyle(
                          fontSize: 16,
                          // color: Colors.black.withOpacity(0.6),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(),
                  ]),
            );
          },
        ));
  }
}



















                // children: [
                //   Container(
                //     height: 12,
                //     width: 30,
                //     decoration: BoxDecoration(
                //       color: Colors.blue[900],
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //   ),
                //   Container(
                //     height: 12,
                //     width: 30,
                //     decoration: BoxDecoration(
                //       color: Colors.blue[200],
                //       shape: BoxShape.circle,
                //     ),
                //   ),
                //   Container(
                //     height: 12,
                //     width: 30,
                //     decoration: BoxDecoration(
                //       color: Colors.blue[200],
                //       shape: BoxShape.circle,
                //     ),
                //   ),
                // ],



// PageView(
//           controller: _controller,
//           children: [
//             SafeArea(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Spacer(),
//                     const Center(
//                       child: Image(
//                         image: AssetImage(
//                             "assets/images/undraw_House_searching_re_stk8-removebg-preview.png"),
//                         height: 220,
//                         width: 420,
//                       ),
//                     ),
//                     Text(
//                       "Discover dream house from\n Smartphone",
//                       style:
//                           TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(
//                       height: 12,
//                     ),
//                     // ignore: unnecessary_const
//                     Opacity(
//                       opacity: 0.6,
//                       child: Text(
//                         "The no 1 App for searching and buying \n The most suitable house for you",
//                         style: TextStyle(
//                           fontSize: 16,
//                           // color: Colors.black.withOpacity(0.6),
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     Spacer(),
//                   ]),
//             ),
//             SafeArea(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Spacer(),
//                     const Center(
//                       child: Image(
//                         image: AssetImage(
//                             "assets/images/undraw_Select_house_re_s1j9.png"),
//                         height: 220,
//                         width: 420,
//                       ),
//                     ),
//                     Text(
//                       "Select Your Prefferable\n House",
//                       style:
//                           TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(
//                       height: 12,
//                     ),
//                     // ignore: unnecessary_const
//                     Opacity(
//                       opacity: 0.6,
//                       child: Text(
//                         "There are many houses in our app",
//                         style: TextStyle(
//                           fontSize: 16,
//                           // color: Colors.black.withOpacity(0.6),
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     Spacer(),
//                   ]),
//             ),
//           ],
//         )















// class OnboardingAction extends StatelessWidget {
//   const OnboardingAction({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 25.0),
//           child: Row(
//             children: [
//               Container(
//                 height: 12,
//                 width: 40,
//                 decoration: BoxDecoration(
//                   color: Colors.blue[900],
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//               Container(
//                 height: 12,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   color: Colors.blue[200],
//                   shape: BoxShape.circle,
//                 ),
//               ),
//               Container(
//                 height: 12,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   color: Colors.blue[200],
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         FloatingActionButton(
//           backgroundColor: Colors.blue[900],
//           onPressed: () {},
//           child: Icon(Icons.navigate_next_outlined),
//         ),
//       ],
//     );
//   }
// }

// class OnboardingFirstPageBody extends StatelessWidget {
//   const OnboardingFirstPageBody({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         Spacer(),
//         const Center(
//           child: Image(
//             image: AssetImage(
//                 "assets/images/undraw_House_searching_re_stk8-removebg-preview.png"),
//             height: 220,
//             width: 420,
//           ),
//         ),
//         Text(
//           "Discover dream house \n From smartphone",
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           textAlign: TextAlign.center,
//         ),
//         SizedBox(
//           height: 12,
//         ),
//         // ignore: unnecessary_const
//         Opacity(
//           opacity: 0.6,
//           child: Text(
//             "The no 1 App for searching and buying \n The most suitable house for you",
//             style: TextStyle(
//               fontSize: 16,
//               // color: Colors.black.withOpacity(0.6),
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Spacer(),
//       ]),
//     );
//   }
// }