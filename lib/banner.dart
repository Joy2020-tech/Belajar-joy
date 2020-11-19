import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerPage extends StatefulWidget {
  BannerPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/Logopendul.png'),
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                  child: Text(
                'SMK NURUL MUTTAQIN',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ))
            ],
          )),

      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_a_photo,
                                  color: Colors.green,
                                  size: 50,
                                ),
                                Text(
                                  'add photos',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  'TESTING PENDIDIK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'GURU/KPROG OM',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  'NP:12345',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, right: 10),
                                child: Text(
                                  '02 October 2020',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: EdgeInsets.only(top: 20),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 100.0),
                    items: [
                      'assets/banner 1.jpg',
                      'assets/banner 2.jpg',
                      'assets/banner 3.jpg',
                      'assets/banner 4.jpg',
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              padding: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Image.asset(
                                i,
                                fit: BoxFit.cover,
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Image.asset('assets/jurnalk.png'),
                          ),
                          Container(
                            child: Image.asset('assets/jadwalm.png'),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Image.asset('assets/riwayatm.png'),
                          ),
                          Container(
                            child: Image.asset('assets/elearning.png'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 1, color: Colors.green))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Icon(
                          Icons.home,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text('home')
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Icon(
                          Icons.fingerprint,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Absen',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text('Profile')
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
