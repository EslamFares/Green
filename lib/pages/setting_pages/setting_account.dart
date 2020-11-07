import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/pages/setting_pages/accountdata.dart';
import 'package:green/pages/setting_pages/password.dart';

class SettingAcountpage extends StatefulWidget {
  @override
  _SettingAcountpageState createState() => _SettingAcountpageState();
}

class _SettingAcountpageState extends State<SettingAcountpage> {
  GlobalKey<ScaffoldState> scaffoldacountKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            key: scaffoldacountKey,
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
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'الإعدادات',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                child: ListView(children: [
                  Center(
                    child: Stack(children: [
                      ClipRRect(
                        child: Container(
                          height: 103,
                          width: 103,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Color(0xff1E7145))),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                color: Color(0xff1E7145),
                                height: 90,
                                width: 90,
                                child: Icon(
                                  Icons.person,
                                  size: 57,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 120,
                    height: 35,
                    child: FlatButton(
                      onPressed: () {
                        print('add img to you');
                      },
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                          child: Text(
                            'إضافة صورة',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AccountData()));
                      },
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.person,
                                size: 26,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'بيانات حسابي',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.edit,
                              size: 26,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 20)
                          ],
                        ),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'اسم المستخدم',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'username',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'البريد الالكتروني',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'info@info.com',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ])),
                  Divider(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Password()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, bottom: 20, top: 20),
                          child: Icon(
                            Icons.lock,
                            size: 26,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'كلمة المرور',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          size: 26,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      return showDialog(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Text("حذف جميع التنزيلات"),
                          content: Text(
                              'عليك أن تعلم أن حذف التنزيلات عملية حذف لكل ما تم تنزيله في المكتبه'),
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
                                  scaffoldacountKey.currentState
                                      // ignore: deprecated_member_use
                                      .showSnackBar(SnackBar(
                                          backgroundColor: Color(0xff1E7145),
                                          content: Container(
                                            height: 30,
                                            child: Center(
                                              child: Text(
                                                'تم الحذف من المكتبة',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'cairo'),
                                              ),
                                            ),
                                          )));
                                  Navigator.pop(context);
                                },
                                child: Text("حذف")),
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, bottom: 20, top: 20),
                          child: Icon(
                            Icons.delete,
                            size: 26,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'حذف جميع التنزيلات',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, top: 15, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.exit_to_app,
                          size: 26,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'تسجيل خروج',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30)
                ]),
              ),
            ])));
  }
}
