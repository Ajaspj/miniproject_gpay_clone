import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/core/constants/colorconstant.dart';

class User {
  final String name, imgUrl;

  User({
    required this.name,
    required this.imgUrl,
  });
}

List<User> dummyData = [
  User(
    name: "ramanan",
    imgUrl: "https://randomuser.me/portraits/men/51.jpg",
  ),
  User(
    name: "adharsh",
    imgUrl: "https://randomuser.me/portraits/men/50.jpg",
  ),
  User(
    name: "elon",
    imgUrl: "https://randomuser.me/portraits/men/49.jpg",
  ),
  User(
    name: "david",
    imgUrl: "https://randomuser.me/portraits/men/48.jpg",
  ),
  User(
    name: "alex",
    imgUrl: "https://randomuser.me/portraits/men/47.jpg",
  ),
  User(
    name: "Sham",
    imgUrl: "https://randomuser.me/portraits/men/46.jpg",
  ),
  User(
    name: "aravind",
    imgUrl: "https://randomuser.me/portraits/men/45.jpg",
  ),
  User(
    name: "abu",
    imgUrl: "https://randomuser.me/portraits/men/44.jpg",
  ),
];

class businessdata {
  final String name1, image;

  businessdata({required this.name1, required this.image});
}

List<businessdata> data = [
  businessdata(name1: "oyo", image: "assets/images/oyo.png"),
  businessdata(name1: "flipkart", image: "assets/images/flipkart.png"),
  businessdata(name1: "vi", image: "assets/images/vi.png"),
  businessdata(name1: "jio", image: "assets/images/jio.png"),
  businessdata(name1: "make my trip", image: "assets/images/makemytrip.png"),
  businessdata(name1: "zomato", image: "assets/images/Zomato_logo.png"),
];

class icondata {
  final String name;
  final Icon icontype;
  icondata({required this.name, required this.icontype});
}

List<icondata> iconslist = [
  icondata(
      name: "Scan any QR code",
      icontype: Icon(
        Icons.qr_code_scanner,
        color: ColorConstants.primaryBlue,
      )),
  icondata(
      name: "Pay Contact",
      icontype: Icon(
        Icons.contacts,
        color: ColorConstants.primaryBlue,
      )),
  icondata(
      name: "Pay Phone Number",
      icontype: Icon(
        Icons.send_to_mobile,
        color: ColorConstants.primaryBlue,
      )),
  icondata(
      name: "Bank Transfer",
      icontype: Icon(
        Icons.account_balance,
        color: ColorConstants.primaryBlue,
      )),
  icondata(
      name: "Pay UPI ID or Number",
      icontype: Icon(
        Icons.alternate_email,
        color: ColorConstants.primaryBlue,
      )),
  icondata(
      name: "Self Transfer",
      icontype: Icon(
        Icons.person,
        color: ColorConstants.primaryBlue,
      )),
  icondata(
      name: "Py Bills",
      icontype: Icon(
        Icons.person,
        color: ColorConstants.primaryBlue,
      )),
  icondata(
      name: "Mobile Recharge",
      icontype: Icon(
        Icons.charging_station,
        color: ColorConstants.primaryBlue,
      )),
];
