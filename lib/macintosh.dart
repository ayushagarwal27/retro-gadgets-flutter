import 'package:flutter/material.dart';

class Macintosh extends StatefulWidget {
  @override
  _MacintoshState createState() => _MacintoshState();
}

class _MacintoshState extends State<Macintosh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Macintosh', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffDAC4B8),
      ),
      backgroundColor: Color(0xffDAC4B8),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width / 1.13,
            decoration: BoxDecoration(
              color: Color(0xffDFE0CF),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 45),
            height: MediaQuery.of(context).size.height / 2.4,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 9),
                  spreadRadius: 10,
                )
              ],
              color: Color(0xff66ECF7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text('Hello',
                  style: TextStyle(fontFamily: 'Mali', fontSize: 40)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 60, left: 40),
              height: 35,
              width: 35,
              child: Image.network(
                  'https://webstockreview.net/transparent250_/apples-clipart-colored-16.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 90, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(height: 7, width: 85, color: Colors.black),
                  Container(
                    height: 12,
                    width: 39,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
