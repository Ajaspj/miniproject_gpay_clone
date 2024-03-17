import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/core/constants/colorconstant.dart';
import 'package:miniproject_gpay_clone/core/constants/image_constants.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text("Ajas pj\najaspj123-1@okhdfcbank\n9562106***"),
                      Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(ImageConstants.peofile),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("set up payment methods"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.account_balance,
                        size: 40,
                        color: ColorConstants.primaryBlue,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue[100],
                        child: Icon(
                          Icons.credit_card,
                          color: ColorConstants.primaryBlue,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue[100],
                        child: Icon(
                          Icons.schedule_send,
                          color: ColorConstants.primaryBlue,
                        ),
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
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Bank account"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text("Rupay credit card"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text("UPI lite"),
                )
              ],
            ),
            ListTile(
              title: Text("Your QR code", style: TextStyle(fontSize: 15)),
              subtitle: Text(
                "Use to recieve money from any UPI app",
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(
                Icons.qr_code_scanner,
                color: ColorConstants.primaryBlue,
              ),
            ),
            ListTile(
              title: Text("Invite friends, get rewards",
                  style: TextStyle(fontSize: 15)),
              subtitle: Text(
                "share your code",
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(
                Icons.redeem,
                color: ColorConstants.primaryBlue,
              ),
              trailing: Text(
                "Share",
                style: TextStyle(color: ColorConstants.primaryBlue),
              ),
            ),
            ListTile(
              title: Text("Auto pay", style: TextStyle(fontSize: 15)),
              subtitle: Text(
                "No pending requests",
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(
                Icons.autorenew,
                color: ColorConstants.primaryBlue,
              ),
            ),
            ListTile(
              title: Text("Pay with credit or debit cards",
                  style: TextStyle(fontSize: 15)),
              subtitle: Text(
                "Bills, online shopping and more",
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(
                Icons.credit_card,
                color: ColorConstants.primaryBlue,
              ),
              trailing: Text(
                "Add",
                style: TextStyle(color: ColorConstants.primaryBlue),
              ),
            ),
            ListTile(
              title: Text("Settings", style: TextStyle(fontSize: 15)),
              leading: Icon(
                Icons.settings,
                color: ColorConstants.primaryBlue,
              ),
            ),
            ListTile(
              title:
                  Text("Manage Google Account", style: TextStyle(fontSize: 15)),
              leading: Icon(
                Icons.person,
                color: ColorConstants.primaryBlue,
              ),
            ),
            ListTile(
              title: Text("Get help", style: TextStyle(fontSize: 15)),
              leading: Icon(
                Icons.help,
                color: ColorConstants.primaryBlue,
              ),
            ),
            ListTile(
              title: Text("Language", style: TextStyle(fontSize: 15)),
              subtitle: Text(
                "English",
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(
                Icons.language,
                color: ColorConstants.primaryBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
