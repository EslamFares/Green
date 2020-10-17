import 'package:flutter/material.dart';

class AccountData extends StatefulWidget {
  @override
  _AccountDataState createState() => _AccountDataState();
}

class _AccountDataState extends State<AccountData> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'بيانات حسابي',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35, left: 20, right: 20.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'اسم المستخدم',
                            hintText: 'username',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green[800]))),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'البريد الإلكتروني',
                            hintText: 'info@info.com.',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green))),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          print('save');
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width - 20,
                          decoration: BoxDecoration(
                              color: Color(0xff1E7145).withOpacity(.8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          child: Center(
                            child: Text(
                              'حفظ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
