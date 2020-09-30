import 'package:flutter/material.dart';
import 'package:green/Data/discoverModel.dart';

import '../discover_page.dart';

class LikesPage extends StatefulWidget {
  @override
  _LikesPageState createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ThemeData.light().scaffoldBackgroundColor,
          elevation: 0,
          centerTitle: false,
          title: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green,
                    size: 25,
                  ),
                  Text('رجوع',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 60,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'الإعجابات',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      90,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                  child: ListView.builder(
                  itemCount: 3,//discoverInfo.length
                  itemBuilder: (BuildContext context, int index) {
                    return DisplayDiscoverInfo(
                      question: discoverInfo[index].question,
                      qoute: discoverInfo[index].quote,
                      hashtag: discoverInfo[index].hashtag,
                    );
                  })
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
