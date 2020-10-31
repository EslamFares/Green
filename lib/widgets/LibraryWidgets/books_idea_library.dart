import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksIdeaLibrary extends StatefulWidget {
  final GlobalKey<ScaffoldState> scafolldBookLibrary;

  const BooksIdeaLibrary({Key key, this.scafolldBookLibrary}) : super(key: key);

  @override
  _BooksIdeaLibraryState createState() => _BooksIdeaLibraryState();
}

class _BooksIdeaLibraryState extends State<BooksIdeaLibrary> {
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
                      color: Color(0xff1E7145),
                      width: 1,
                      style: BorderStyle.solid))),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff1E7145),
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
                            'مراجعة كتاب',
                          ),
                          Text(
                            'كتاب كيف تتح...',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
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
                                color: Color(0xff1E7145),
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
                                                // ignore: deprecated_member_use
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Color(0xff1E7145),
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
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('للكاتب : الين مازليش واديل نابر')],
                  )
                ],
              ))
            ],
          ),
        );
      },
      itemCount: 2,
    );
  }
}
