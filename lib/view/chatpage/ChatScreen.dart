import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/core/constants/colorconstant.dart';
import 'package:miniproject_gpay_clone/core/constants/image_constants.dart';

class ChatSCreen extends StatelessWidget {
  const ChatSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.grey[200],
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
              radius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text("user")
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.call),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Pay",
              style: TextStyle(color: ColorConstants.primarWhite),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 11, 92, 232),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text("Request",
                style: TextStyle(color: ColorConstants.primarWhite)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 11, 92, 232),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "message...",
              )),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.send,
            size: 20,
          )
        ],
      ),
    );
  }
}
