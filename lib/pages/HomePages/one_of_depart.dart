import 'dart:math';

import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';
import 'package:green/pages/HomePages/read_book.dart';

class OneOfDerpatPage extends StatefulWidget {
  @override
  _OneOfDerpatPageState createState() => _OneOfDerpatPageState();
}

class _OneOfDerpatPageState extends State<OneOfDerpatPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
            semanticChildCount: 4, slivers: <Widget>[appbar(context), body()]),
      ),
    );
  }

  SliverGrid body() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: .62,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReadbookPage()));},
                      child: Container(
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // margin: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 2.1,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff1E7145),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.amber,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        DataSource.booksInfo[Random().nextInt(DataSource.booksInfo.length)]['imgurl']),
                                    fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(10.0)),
                              height: 200,
                              // child: FlutterLogo(),
                              ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                              padding: EdgeInsets.only(right: 8),
                              width: MediaQuery.of(context).size.width / 2.1,
                             decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight:  Radius.circular(10)
                              )),
                              height: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${DataSource.booksInfo[index]['writer']}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                                      child: Container(
                      // color: Colors.deepPurple,
                      padding: EdgeInsets.all(5),
                      // margin: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '${DataSource.booksInfo[index]['name'].toString().length <= 20 ? DataSource.booksInfo[index]['name'] : DataSource.booksInfo[index]['name'].toString().substring(0, 18) + '...'}',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Wrap(
                            children: <Widget>[
                              Text(
                                '${DataSource.booksInfo[index]['content'].toString().substring(0, 55)}...',
                                style: TextStyle(
                                    fontSize: 11,
                                    height: 1.5,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        childCount: DataSource.booksInfo.length,
      ),
    );
  }

  SliverAppBar appbar(BuildContext context) {
    return SliverAppBar(
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
          title: Text('الأقسام',
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
    );
  }
}
