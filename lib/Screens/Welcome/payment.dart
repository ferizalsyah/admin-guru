import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Payment Card Demo',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Card Demo',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.payment_outlined),
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Number',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.card_membership_rounded),
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'CVV',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Expire Date',
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Pay'),
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            )
          ],
        ),
      ),
    );
  }
}
