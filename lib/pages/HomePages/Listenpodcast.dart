import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';

class ListenPodCast extends StatefulWidget {
  @override
  _ListenPodCastState createState() => _ListenPodCastState();
}

class _ListenPodCastState extends State<ListenPodCast> {
  bool listenBok = false;
  double _musicValue = 0;
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: ListView(children: [
            Padding(
              padding:
                  EdgeInsets.only(right: 45, left: 45, top: 15, bottom: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  color: Color(0xff1E7145),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .4 - 35,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          image: DecorationImage(
                              image: NetworkImage(DataSource.booksInfo[1]
                                  ['imgurl']),
                              fit: BoxFit.contain),
                        ),
                        // child: FlutterLogo(),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width - 50,
                          color: Colors.black12,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  'بريان تريسي',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'مقدمة',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: Text('1/8',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Container(
                // color: Colors.amber,
                width: (MediaQuery.of(context).size.width -
                            (MediaQuery.of(context).size.width / 1.7)) /
                        2 -
                    5,
                child: Center(
                  child: Text(
                    '${_musicValue.toString().length > 4 ? _musicValue.toString().substring(0, 5) : _musicValue}',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontFamily:
                            DefaultTextStyle.of(context).style.fontFamily),
                  ),
                ),
              ),
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Slider(
                    value: _musicValue,
                    // value: 10,

                    max: 14,
                    min: 0,
                    divisions: 200,
                    onChanged: (double value) {
                      setState(() {
                        _musicValue = value;
                      });
                    },
                    activeColor: Color(0xff1E7145),
                  ),
                ),
              ),
              Container(
                // color: Colors.red,
                width: (MediaQuery.of(context).size.width -
                            (MediaQuery.of(context).size.width / 1.7)) /
                        2 -
                    5,
                child: Center(
                  child: Text(
                    '14:00',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontFamily:
                            DefaultTextStyle.of(context).style.fontFamily),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  // color: Colors.purple,
                  height: 50,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.forward_10,
                          size: 25, color: Colors.grey))),
              Container(
                  // color: Colors.red,
                  height: 50,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child:
                          Icon(Icons.skip_next, size: 25, color: Colors.grey))),
              Container(
                  // color: Colors.amber,
                  height: 55,
                  width: MediaQuery.of(context).size.width / 5,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      print('play');
                      setState(() {
                        play = !play;
                      });
                    },
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          play ? Icons.pause : Icons.play_arrow,
                          size: 40,
                        )),
                  )),
              Container(
                  // color: Colors.green,
                  height: 50,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.skip_previous,
                          size: 25, color: Colors.grey))),
              Container(
                  // color: Colors.greenAccent,
                  height: 50,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child:
                          Icon(Icons.replay_5, size: 25, color: Colors.grey))),
            ]),
            SizedBox(
              height: 25,
            ),
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              elevation: 0,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xff1E7145),
                    borderRadius: BorderRadius.circular(50.0)),
                child: Icon(
                  Icons.subject,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ));
  }
}
