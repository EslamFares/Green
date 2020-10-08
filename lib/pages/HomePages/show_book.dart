import 'package:flutter/material.dart';

class ShowBook extends StatefulWidget {
  @override
  _ShowBookState createState() => _ShowBookState();
}

class _ShowBookState extends State<ShowBook> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: false,
            pinned: true,
            snap: false,
            expandedHeight: 100.0,
            automaticallyImplyLeading: false,
            titleSpacing: 15.0,
            flexibleSpace: const FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(right: 50, bottom: 10),
                collapseMode: CollapseMode.pin,
                title: Text('كتاب ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w900))),
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.green[800],
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      )),
    );
  }
}
