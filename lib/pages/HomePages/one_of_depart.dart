import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.green[800],
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
            padding: EdgeInsets.only(left: 2,right: 2),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, right: 10),
                  child: Row(
                    children: <Widget>[
                      Text('النمو الشخصى',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900))
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  child: GridView.builder(
                    itemCount: DataSource.booksInfo.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: .57,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          // color: Colors.amber,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                // margin: EdgeInsets.only(left: 10),
                                width: MediaQuery.of(context).size.width / 2.1,
                                height: 230,
                                decoration: BoxDecoration(
                                    color: Colors.green[800],
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
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          height: 230,
                                          child: FlutterLogo()),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                          padding: EdgeInsets.only(right: 8),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.1,
                                          color: Colors.black26,
                                          height: 30,
                                          child: Text(
                                            '${DataSource.booksInfo[index]['writer']}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // color: Colors.deepPurple,
                                padding: EdgeInsets.all(5),
                                // margin: EdgeInsets.only(left: 10),
                                width: MediaQuery.of(context).size.width / 2.1,
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.lock,
                                          color: Colors.black,
                                          size: 18,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '${DataSource.booksInfo[index]['name'].toString().length <= 20 ? DataSource.booksInfo[index]['name'] : DataSource.booksInfo[index]['name'].toString().substring(0, 18) + '...'}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w900),
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
                              )
                            ],
                          ),
                        );
                      }),
                ))
              ],
            )),
      ),
    );
  }
}
