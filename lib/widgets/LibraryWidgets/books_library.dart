import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BooksLibrary extends StatefulWidget {
  final GlobalKey<ScaffoldState> scafolldBookLibrary;

  const BooksLibrary({Key key, this.scafolldBookLibrary}) : super(key: key);

  @override
  _BooksLibraryState createState() => _BooksLibraryState();
}

class _BooksLibraryState extends State<BooksLibrary> {
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          // color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid))),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(10.0)),
                width: MediaQuery.of(context).size.width * .33,
                height: 140,
                child: FlutterLogo(),
              ),
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
                            'لعبة الثقة',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text('ماريا كونيكوفا'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.turned_in,
                                size: 30,
                                color: Colors.green[900],
                              ),
                              onPressed: () {
                                return showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      CupertinoAlertDialog(
                                    title: Text("هل أنت متأكد من حذف الكتاب"),
                                    actions: [
                                      CupertinoDialogAction(
                                          isDefaultAction: true,
                                          onPressed: () {
                                            print('cancel');
                                            Navigator.pop(context);
                                          },
                                          child: Text("إلغاء")),
                                      CupertinoDialogAction(
                                          isDefaultAction: true,
                                          onPressed: () {
                                            print('remove');
                                            widget.scafolldBookLibrary
                                                .currentState
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Colors.green[700],
                                                    content: Container(
                                                      height: 30,
                                                      child: Center(
                                                        child: Text(
                                                          'تم الحذف من المكتبة',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontFamily:
                                                                  'cairo'),
                                                        ),
                                                      ),
                                                    )));
                                            Navigator.pop(context);
                                          },
                                          child: Text("حذف")),
                                    ],
                                  ),
                                );
                              }),
                          SizedBox(width: 15),
                          IconButton(
                              icon: saved
                                  ? Icon(
                                      Icons.check_circle,
                                      size: 30,
                                      color: Colors.green[900],
                                    )
                                  : Icon(
                                      Icons.save_alt,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                              onPressed: () {
                                return setState(() {
                                  return saved = !saved;
                                });
                              })
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      LinearPercentIndicator(
                        isRTL: true,
                        width: MediaQuery.of(context).size.width * .45,
                        animation: true,
                        lineHeight: 5.0,
                        animationDuration: 1000,
                        percent: 0.3,
                        // center: Text("90.0%"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.green[800],
                      ),
                      Text(
                        '30 %',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        );
      },
      itemCount: 20,
    );
  }
}
