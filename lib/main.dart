import 'package:flutter/material.dart';
import 'package:retrogadgetsapp/constants.dart';
import 'package:retrogadgetsapp/macintosh.dart';
import 'package:retrogadgetsapp/mp3Player.dart';
import 'package:retrogadgetsapp/pager.dart';
import 'television.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Retro Gadgets',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Color(0xffDAC4B8),
      ),
      backgroundColor: Color(0xffDAC4B8),
      body: Padding(
        padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
        child: GridView.count(
          crossAxisCount: 1,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            Container(
                height: 150,
                width: 150,
                decoration: kGridContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
//
                    height: 100,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Television();
                        }));
                      },
                      child: Image.network(
                          'https://www.pinclipart.com/picdir/big/0-6096_retro-tv-icon-tv-vector-icon-clipart.png'),
                    ),
                  ),
                )),
            Container(
                height: 150,
                width: 150,
                decoration: kGridContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Mp3Player();
                        }));
                      },
                      child: Image.network(
                          'https://www.pinclipart.com/picdir/big/1-16736_kaffebnna-clipart-classic-clip-art-ipod-classic-clip.png'),
                    ),
                  ),
                )),
            Container(
                height: 200,
                width: 200,
                decoration: kGridContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Pager();
                        }));
                      },
                      child: Image.network(
                          'https://www.pinclipart.com/picdir/big/193-1932516_radio-pager-icon-clipart.png'),
                    ),
                  ),
                )),
            Container(
                height: 200,
                width: 200,
                decoration: kGridContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Macintosh();
                        }));
                      },
                      child: Image.network(
                          'https://4vector.com/i/free-vector-macintosh-plus-clip-art_116620_Macintosh_Plus_clip_art_hight.png'),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
