import 'package:flutter/material.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set up payment methods'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ajas pj (ajaspj123-1@okhdfcbank)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('9562106384'),
            SizedBox(height: 16),
            Text('UPI number'),
            SizedBox(height: 8),
            Text('184 Rewards earned'),
            SizedBox(height: 16),
            Text('Bank account'),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('RuPay credit card'),
              subtitle: Text('**** 1234'),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('UPI Lite'),
              subtitle: Text('**** 1234'),
            ),
            SizedBox(height: 16),
            Text('Pay with UPI'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your QR code'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Use'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Add a new payment method'),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add UPI'),
            ),
          ],
        ),
      ),
    );
  }
}
