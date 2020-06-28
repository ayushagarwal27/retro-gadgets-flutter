import 'package:flutter/material.dart';

class Mp3Player extends StatefulWidget {
  @override
  _Mp3PlayerState createState() => _Mp3PlayerState();
}

class _Mp3PlayerState extends State<Mp3Player> {
  int _selectedPage = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff752D15),
        appBar: AppBar(
          title: Text('Mp3 Player', style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xffDAC4B8),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                height: MediaQuery.of(context).size.height / 2.3,
                width: MediaQuery.of(context).size.width / 1.15,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      _selectedPage = index;
                    });
                  },
                  controller: controller,
                  children: [
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/5/51/Michael_Jackson_-_Bad.png'),
                    Image.network(
                        'https://miro.medium.com/max/1280/1*4PHH6b1KbsWh2nKtcnFiIQ.jpeg'),
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/9/92/ACDC_Back_in_Black.png'),
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/4/43/Queen_II_%28album_cover%29.jpg'),
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/3/36/GreatestHits_Guns%27n%27Roses.jpg')
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 36.0),
                              child: Icon(Icons.pause,
                                  color: Color(0xff752D15), size: 40.0)),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 36.0),
                            child: IconButton(
                              icon: Icon(Icons.skip_next),
                              iconSize: 42.0,
                              color: Color(0xff752D15),
                              onPressed: () {
                                controller.animateToPage(++_selectedPage,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.ease);
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 36.0),
                            child: IconButton(
                              icon: Icon(Icons.skip_previous),
                              iconSize: 42.0,
                              color: Color(0xff752D15),
                              onPressed: () {
                                controller.animateToPage(--_selectedPage,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.ease);
                              },
                            ),
                          ),
                          Container(
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(bottom: 36.0),
                              child: Icon(Icons.stop,
                                  size: 40, color: Color(0xff752D15))),
                        ],
                      ),
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Color(0xff752D15), spreadRadius: 8)
                          ]),
                      child: Icon(
                        Icons.play_arrow,
                        size: 85,
                        color: Color(0xff752D15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
