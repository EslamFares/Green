import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';
import 'package:green/pages/HomePages/show_book.dart';

class BooksReviewPage extends StatefulWidget {
  @override
  _BooksReviewPageState createState() => _BooksReviewPageState();
}

class _BooksReviewPageState extends State<BooksReviewPage> {
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
                    // centerTitle: true,
                    titlePadding: EdgeInsets.only(right: 50, bottom: 10),
                    collapseMode: CollapseMode.pin,
                    title: Text('مراجعات الكتب',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900))),
                leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xff1E7145),
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              SliverList(
                  delegate: SliverChildListDelegate(
                listBokReview(context, DataSource.booksInfo.length),
              )),
            ],
          )),
    );
  }

  List listBokReview(BuildContext context, int count) {
    List<Widget> listItems = List();
    for (int index = 0; index < count; index++) {
      listItems.add(
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
              // color: Colors.amber,
              border: Border(
                  bottom: BorderSide(
                      color: Color(0xff1E7145),
                      width: 1,
                      style: BorderStyle.solid))),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ShowBook()));
            },
            child: Row(
              children: <Widget>[
                Container(
                  
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff1E7145),
                    image: DecorationImage(
                        image: NetworkImage(DataSource.bookReviewsicon[index]),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                // stackContainer(index),
                SizedBox(width: 10),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'مراجعة كتاب',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              DataSource.booksInfo[index]['name'],
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'للكاتب : ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          DataSource.booksInfo[index]['writer']
                                      .toString()
                                      .length >
                                  20
                              ? '${DataSource.booksInfo[index]['writer'].toString().substring(1, 18)}..'
                              : DataSource.booksInfo[index]['writer'],
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    }
    return listItems;
  }

  Container stackContainer(int index) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
      width: 130,
      height: 150,
      decoration: BoxDecoration(
          color: Color(0xff1E7145), borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 85,
            width: 100,
            // color: Colors.red,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                Center(
                  child: Icon(
                    DataSource.iconDepart[index],
                    color: Colors.black,
                    size: 60,
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Text(
                      'مراجعة كتاب',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 20,
            width: 110,
            child: Center(
                child: Text(
              'كيف تتحدث فيصغى الصغار',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 8),
            )),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
