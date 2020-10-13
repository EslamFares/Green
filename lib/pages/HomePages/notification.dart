import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.white,
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
                    title: Text('الإشعارات ',
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
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/notification/no_notification.png',
                                  ),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          Text(
                            'لا يوجد إشعارات',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
