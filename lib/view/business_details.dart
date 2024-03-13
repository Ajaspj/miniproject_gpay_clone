import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/dummy_db.dart';

class businessDetails extends StatelessWidget {
  final ScrollController controller;

  const businessDetails({Key, required this.controller}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: data.length,
        controller: controller,
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
    );
  }
}
