import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/core/constants/colorconstant.dart';
import 'package:miniproject_gpay_clone/core/constants/image_constants.dart';
import 'package:miniproject_gpay_clone/dummy_db.dart';
import 'package:miniproject_gpay_clone/view/chatpage/ChatScreen.dart';
import 'package:miniproject_gpay_clone/view/checkbalancescreen/checkbalancescreen.dart';

import 'package:miniproject_gpay_clone/view/profilescreen/profilescreen.dart';
import 'package:miniproject_gpay_clone/view/transactionscreen/transactionscreen.dart';

class GooglePayHome extends StatefulWidget {
  @override
  _GooglePayHomeState createState() => _GooglePayHomeState();
}

class _GooglePayHomeState extends State<GooglePayHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Pay friends and merchants",
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 40, minHeight: 50),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    isDense: true,
                    fillColor: Colors.black.withOpacity(.1),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profilescreen(),
                      ));
                },
                icon: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(ImageConstants.peofile),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/homebg.png",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
            //icon widgets
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.qr_code_scanner,
                          size: 25, color: ColorConstants.primaryBlue),
                      Icon(
                        Icons.contacts,
                        size: 25,
                        color: ColorConstants.primaryBlue,
                      ),
                      Icon(Icons.send_to_mobile,
                          size: 25, color: ColorConstants.primaryBlue),
                      Icon(
                        Icons.account_balance,
                        size: 25,
                        color: ColorConstants.primaryBlue,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Scan any\nQR code"),
                ),
                Text("  Pay\ncontacts"),
                Text("Pay phone\n  number"),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Bank\ntransfer"),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.alternate_email,
                        size: 25,
                        color: ColorConstants.primaryBlue,
                      ),
                      Icon(
                        Icons.person,
                        size: 25,
                        color: ColorConstants.primaryBlue,
                      ),
                      Icon(
                        Icons.receipt_long,
                        size: 25,
                        color: ColorConstants.primaryBlue,
                      ),
                      Icon(
                        Icons.charging_station,
                        size: 25,
                        color: ColorConstants.primaryBlue,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("     Pay UPI Id"),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Self\ntransfer"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Pay\nbills"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Mobile\nrecharge"),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 5,
                  width: 5,
                  color: Colors.black,
                ),
                Container(
                  height: 5,
                  width: 5,
                  color: Colors.black,
                )
              ],
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
                    ),
                  ),
                ],
              ),
            ),
            //user details
            SizedBox(
              height: 20,
            ),
            Container(
              height: 190,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: dummyData.length,
                itemBuilder: (context, i) {
                  return GridTile(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatSCreen(),
                                ));
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(dummyData[i].imgUrl),
                            radius: 30,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          dummyData[i].name,
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 200),
                  child: CustomPaint(
                    size: Size(30, 30),
                  ),
                ),
                Container(
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Buy ICICI FASTag & get\nflat 100 cashback.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[600],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.drive_eta_rounded,
                                color: Colors.blue[700],
                                size: 40,
                              ),
                              Icon(
                                Icons.local_gas_station,
                                color: Colors.blue[200],
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Container(
              height: 190,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return GridTile(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(data[i].image),
                          radius: 30,
                        ),
                        SizedBox(height: 2),
                        Text(
                          data[i].name1,
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Bills & recharges",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "No bills due. Try adding these!",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue[100],
                        child: Icon(Icons.charging_station),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue[100],
                        child: Icon(Icons.tv),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue[100],
                        child: Icon(Icons.emoji_objects),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue[100],
                        child: Icon(Icons.stay_primary_portrait),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("        mobile\n       recharge"),
                ),
                Text("DTH/cable"),
                Text("Electricity"),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text("Postpaid\n   mobile"),
                )
              ],
            ),
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
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.speed,
                        color: Colors.blue,
                        size: 25,
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Check your CIBIL score",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.history,
                        color: Colors.blue,
                        size: 25,
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Transactionscreen()));
                        },
                        child: Text(
                          "see transaction history ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.account_balance,
                        color: Colors.blue,
                        size: 25,
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BalanceScreen()));
                        },
                        child: Text(
                          "Check bank balance     ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 230,
              decoration: BoxDecoration(color: Colors.blue[50]),
              child: Padding(
                padding: EdgeInsets.only(left: 25, top: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Invite Your Friend's",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Get \u{20B9}101 after each friend's first payment",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Invite",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
