import 'package:flutter/material.dart';

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quét để thanh toán',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset('assets/QR.png'), // Big QR image in the middle
            SizedBox(height: 20),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child: Image.asset('assets/momo_icon.png')), // Momo icon
                  Expanded(
                      child: Image.asset(
                          'assets/vcb_icon.png')), // Vietcombank icon
                  Expanded(
                      child: Image.asset(
                          'assets/mbbank_icon.png')), // MB Bank icon
                  Expanded(
                      child:
                          Image.asset('assets/paypal_icon.png')), // PayPal icon
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
