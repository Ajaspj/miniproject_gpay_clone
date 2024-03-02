import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/core/constants/image_constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Image.asset(
                  ImageConstants.gplogo,
                  scale: 3.0,
                ),
                SizedBox(height: 16),
                Text(
                  'Welcome to Google Pay',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Text('Enter your phone number'),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: "+91 0000000000",
                    hintStyle: TextStyle(fontSize: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 432,
                ),
                Center(
                  child: SizedBox(
                    width: 344,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "continue",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 11, 92, 232),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
