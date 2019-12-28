// TODO: move an paste in main dart

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HelloWorld(),
    ));

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Hello world!'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Anoop.jpg'),
                radius: 48,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey[700],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Anoop.P.A',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.email,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'sripaanoop@gmail.com',
              style: TextStyle(
                  color: Colors.amberAccent, letterSpacing: 1.5, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '+81 984 624 2351',
              style: TextStyle(
                  color: Colors.amberAccent, letterSpacing: 1.5, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'STATUS',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rocking in flutter! ',
              style: TextStyle(
                  color: Colors.amberAccent, letterSpacing: 1.5, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
