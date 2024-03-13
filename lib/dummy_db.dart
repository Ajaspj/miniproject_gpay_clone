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
  businessdata(name1: "flipkart", image: "assets/images/flipkart.png")
];
