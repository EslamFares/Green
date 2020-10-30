import 'package:flutter/material.dart';

import 'open_book.dart';

class ListenPodCast extends StatefulWidget {
  @override
  _ListenPodCastState createState() => _ListenPodCastState();
}

class _ListenPodCastState extends State<ListenPodCast> {
  bool listenBok = false;
  double _musicValue = 0;
  @override
  Widget build(BuildContext context) {
    return
        // Directionality(
        // textDirection: TextDirection.rtl,
        // child:
        Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Color(0xff1E7145),
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(right: 40, left: 40, top: 20, bottom: 20),
          child: Container(
            width: 100,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff1E7145),
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
        SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: Text('1/8',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ),
        SizedBox(
          height: 15,
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
                    fontFamily: DefaultTextStyle.of(context).style.fontFamily),
              ),
            ),
          ),
          Slider(
            value: _musicValue,
            // value: 10,
            max: 14,
            min: 0,
            divisions: 20,
            onChanged: (double value) {
              setState(() {
                _musicValue = value;
              });
            },
            activeColor: Color(0xff1E7145),
          ),
          Container(
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
                    fontFamily: DefaultTextStyle.of(context).style.fontFamily),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 3,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.replay_10, size: 25, color: Colors.grey))),
          Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 3,
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    size: 35,
                  ))),
          Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 3,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.replay_5, size: 25, color: Colors.grey))),
        ]),
        SizedBox(
          height: 5,
        ),
        FloatingActionButton(
          backgroundColor: Color(0xff1E7145),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OpenBookpage()));
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.subject,
              size: 25,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
