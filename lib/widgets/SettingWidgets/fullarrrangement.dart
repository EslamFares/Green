import 'package:flutter/material.dart';

class FullArrangement extends StatefulWidget {
  @override
  _FullArrangementState createState() => _FullArrangementState();
}

class _FullArrangementState extends State<FullArrangement> {
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
          title: FlatButton(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color(0xff1E7145),
                    ),
                  ],
                )),
            onPressed: () {
              Navigator.pop(context);
            },
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'محليًا',
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
                  child: ListView(
                    children: [
                      for (int i = 0; i < 15; i++) ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width / 10,
                                  width: MediaQuery.of(context).size.width / 10,
                                  decoration: BoxDecoration(
                                      color: Color(0xff1E7145),
                                      border: Border.all(
                                        color: Color(0xff1E7145),
                                      ),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Expanded(flex: 5, child: Text('afnan')),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width / 10,
                                  width: MediaQuery.of(context).size.width / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff1E7145),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ]
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
