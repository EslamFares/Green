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
          title: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green,
                    size: 25,
                  ),
                  Text('رجوع',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(right: 15),
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ' شروط المسابقة',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
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
                'إيمانا  منا بأهمية القراءة والثقافة ودورهما في تحيبن حياة الفرد , ومحاولة للمساعدة على قيامك بممارستهم بشكل مستمر فقد حولنا تجربة الاستخدام لشكل أقرب لمسابقة بين مستخدمي أخضر! سيتمكن مستخدم النظام الجديد من متابعة تقدمه في القراءة ومتابعة تحقيق أهداف ثراءه الشخصي.',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                  'أيضا سيتمكن من متابعة /مقارنة نفسه بغيره من أعضاء أخضر في نطاق عالمي/محلي.'),
              Text(
                ' قراءة ملخص الكتاب:عدد أجزاء الكتاب = عدد نقاط الرصيد',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                'قراءة أفكار من الكتاب: عدد خمسة نقاط',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                'تصفح التطبيق بشكل يومي: عدد نقطة واحدة ',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                'تسجيل عضوية لأول مرة: عشرة نقاط',
                style: TextStyle(fontSize: 19),
              ),
            ])),
      ),
    );
  }
}
