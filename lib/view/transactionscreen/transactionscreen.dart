import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/core/constants/image_constants.dart';

class Transactionscreen extends StatelessWidget {
  const Transactionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Adharsh",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              "15 march 2024 at 23:11",
              style: TextStyle(fontSize: 13),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
            ),
            trailing: Text(
              "500",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "Abu",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              "15 march 2024 at 23:11",
              style: TextStyle(fontSize: 13),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
            ),
            trailing: Text(
              "500",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "Alan",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              "15 march 2024 at 23:11",
              style: TextStyle(fontSize: 13),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
            ),
            trailing: Text(
              "500",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "Adharsh",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              "05 march 2024 at 09:30",
              style: TextStyle(fontSize: 13),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
            ),
            trailing: Text(
              "10000",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "Albin",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              "01 march 2024 at 02:00",
              style: TextStyle(fontSize: 13),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
            ),
            trailing: Text(
              "10",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "Aravind",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              "25 february 2024 at 10:25",
              style: TextStyle(fontSize: 13),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
            ),
            trailing: Text(
              "100",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "Adharsh",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              "10 february 2024 at 03:01",
              style: TextStyle(fontSize: 13),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.peofile),
            ),
            trailing: Text(
              "2000",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
