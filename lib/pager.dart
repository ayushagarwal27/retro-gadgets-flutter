import 'package:flutter/material.dart';

class Pager extends StatefulWidget {
  @override
  _PagerState createState() => _PagerState();
}

class _PagerState extends State<Pager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAC4B8),
      appBar: AppBar(
        title: Text('Pager', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffDAC4B8),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff26201B),
          ),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 1.05,
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff649976),
                ),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.25,
                child: Text(
                  '01: DON\'T RUSH THERE IS  STILL'
                  ' TIME  FOR WRITING  FLUTTER  APP  '
                  '                    ..'
                  ' 3:20 A.M 28/06/2020',
                  style: TextStyle(fontFamily: 'WorkSans', fontSize: 27),
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff26201B),
          ),
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 1.05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 45),
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.remove, size: 45, color: Color(0xff99A33C)),
                    Icon(Icons.remove, size: 45, color: Color(0xffBF2E2E)),
                  ],
                ),
              ),
              Text(
                'RETRO GADGETS LTD.',
                style: TextStyle(
                    color: Color(0xff9A8B52),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3.9,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Icon(
                        Icons.arrow_drop_up,
                        size: 40,
                        color: Color(0xff9A8B52),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_right,
                        size: 40,
                        color: Color(0xff9A8B52),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_left,
                          size: 40, color: Color(0xff9A8B52)),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 40,
                        color: Color(0xff9A8B52),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
