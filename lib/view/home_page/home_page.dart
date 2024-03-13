import 'package:flutter/material.dart';

import 'package:miniproject_gpay_clone/core/constants/image_constants.dart';
import 'package:miniproject_gpay_clone/view/business_details.dart';
import 'package:miniproject_gpay_clone/view/user_details.dart';
import 'package:miniproject_gpay_clone/view/widgets/business_widgets.dart';
import 'package:miniproject_gpay_clone/view/widgets/cash_widgets.dart';
import 'package:miniproject_gpay_clone/view/widgets/invite_widget.dart';

class GooglePayHome extends StatefulWidget {
  @override
  _GooglePayHomeState createState() => _GooglePayHomeState();
}

class _GooglePayHomeState extends State<GooglePayHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[700],
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.center_focus_weak,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    child: Icon(Icons.people),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: 110),
              child: Container(
                child: Image.asset(
                  ImageConstants.gplogo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.6,
              builder:
                  (BuildContext context, ScrollController myScrollController) {
                return ListView.builder(
                  controller: myScrollController,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 12),
                          // ScrollHandle(),
                          Center(
                            child: Container(
                              height: 5,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                          SizedBox(height: 20),

                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Text(
                                  "People",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          UserDetails(controller: myScrollController),

                          SizedBox(height: 30),

                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Business",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.blue[600],
                                          size: 20,
                                        ),
                                        Text(
                                          "Explore",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          BusinessBanner(),
                          SizedBox(height: 20),
                          businessDetails(controller: myScrollController),

                          SizedBox(height: 30),

                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Text(
                                  "offers and rewards",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(left: 17),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.orange,
                                              child: Icon(
                                                Icons.emoji_events,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              "Rewards",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.red[700],
                                              child: Icon(
                                                Icons.local_offer,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              "Offers",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              child: Icon(
                                                Icons.emoji_events_outlined,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              "Refferals",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          CashUtils(),
                          SizedBox(height: 50),
                          InviteSection(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
