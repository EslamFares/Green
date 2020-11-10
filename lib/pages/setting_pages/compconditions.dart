import 'package:flutter/material.dart';

class ComConditions extends StatefulWidget {
  @override
  _ComConditionsState createState() => _ComConditionsState();
}

class _ComConditionsState extends State<ComConditions> {
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
          body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                padding:
                    EdgeInsets.only(left: 10, top: 3, right: 10, bottom: 2),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'شروط المسابقة',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: ListView(children: [
                  Container(
                    width: 440,
                    height: 160,
                    child: Image.network(
                        'https://t4.ftcdn.net/jpg/02/35/67/27/240_F_235672714_MVmhbqM4K88gLBAgN0trZEvH6XDZ6yHI.jpg'),
                  ),
                  SizedBox(
                    height: (10.0),
                  ),
                  Text(
                    'إيمانا  منا بأهمية القراءة والثقافة ودورهما في تحيبن حياة الفرد , ومحاولة للمساعدة على قيامك بممارستهم بشكل مستمر فقد حولنا تجربة الاستخدام لشكل أقرب لمسابقة بين مستخدمي أخضر! سيتمكن مستخدم النظام الجديد من متابعة تقدمه في القراءة ومتابعة تحقيق أهداف ثراءه الشخصي.\n أيضا سيتمكن من متابعة /مقارنة نفسه بغيره من أعضاء أخضر في نطاق عالمي/محلي.\n قراءة ملخص الكتاب: عدد أجزاء الكتاب = عدد نقاط الرصيد \n قراءة أفكار من الكتاب: عدد خمسة نقاط\n تصفح التطبيق بشكل يومي: عدد نقطة واحدة.\n تسجيل عضوية لأول مرة: عشرة نقاط.',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            )
          ])),
    );
  }
}
