import 'package:flutter/material.dart';

class Television extends StatefulWidget {
  @override
  _TelevisionState createState() => _TelevisionState();
}

class _TelevisionState extends State<Television> {
  int _selectedPage = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Television', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffDAC4B8),
      ),
      backgroundColor: Color(0xffDAC4B8),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff797979),
                ),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: IconButton(
                          icon: Icon(
                            Icons.power_settings_new,
                            color: Colors.black,
                            size: 28,
                          ),
                          onPressed: () {
                            controller.animateToPage(1,
                                duration: Duration(milliseconds: 250),
                                curve: Curves.bounceOut);
                          }),
                    ),
                  ),
                  Align(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  size: 35,
                                ),
                                onPressed: () {
                                  controller.animateToPage(--_selectedPage,
                                      duration: Duration(milliseconds: 250),
                                      curve: Curves.easeIn);
                                }),
                            IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                                onPressed: () {
                                  controller.animateToPage(++_selectedPage,
                                      duration: Duration(milliseconds: 250),
                                      curve: Curves.easeIn);
                                }),
                          ]),
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.50,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: PageView(
                      onPageChanged: (index) {
                        setState(() {
                          _selectedPage = index;
                        });
                      },
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.network(
                          'https://specials-images.forbesimg.com/imageserve/5ed68e8310716f0007411996/960x0.jpg?fit=scale',
                          fit: BoxFit.fill,
                        ),
                        Image.network(
                          'https://thumbs.dreamstime.com/z/creative-illustration-no-signal-tv-test-pattern-background-television-screen-error-smpte-color-bars-technical-problems-art-144857612.jpg',
                          fit: BoxFit.fill,
                        ),
                        Image.network(
                          'https://images.fastcompany.net/image/upload/w_596,c_limit,q_auto:best,f_auto/wp-cms/uploads/2018/07/i-1-general-magic.jpg',
                          fit: BoxFit.fill,
                        ),
                        Image.network(
                          'https://www.denofgeek.com/wp-content/uploads/2020/02/50s-scifi02.jpg',
                          fit: BoxFit.fill,
                        ),
                        Image.network(
                          'https://images.unsplash.com/photo-1586005809713-8c01fb522038?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                          fit: BoxFit.fill,
                        ),
                        Image.network(
                          'https://specials-images.forbesimg.com/imageserve/5ed68e8310716f0007411996/960x0.jpg?fit=scale',
                          fit: BoxFit.fill,
                        )
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 150),
                height: MediaQuery.of(context).size.height / 30,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: Color(0xff68655E),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
