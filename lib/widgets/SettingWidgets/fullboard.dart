import 'dart:math';

import 'package:flutter/material.dart';

import 'accountWidgets/countrydata.dart';
import 'accountWidgets/name_in_borad.dart';

class Fullboard extends StatelessWidget {
  final String appBarTitle;
  Fullboard(this.appBarTitle);
  @override
  Widget build(BuildContext context) {
    List names = [
      'Eslam Fares',
      "Afnan",
      'zain',
      'nour',
      'ali',
      'esraa',
      'shimaa',
      'ashraf',
      'Ahmed',
      'Eman',
      'Gamela',
      'Gehan'
    ];

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                    appBarTitle,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'العشرون الأوائل',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      90,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: countryFlags.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          //=================
                          nameInBord(context, index + 1,
                              names[Random().nextInt(names.length)], index),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ],
                      );
                    },
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
