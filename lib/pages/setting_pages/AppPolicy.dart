import 'package:flutter/material.dart';

class AppPolicy extends StatefulWidget {
  @override
  _AppPolicyState createState() => _AppPolicyState();
}

class _AppPolicyState extends State<AppPolicy> {
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
                      'سياسة التطبيق ',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SizedBox(height: 15),
            Container(
              width: 400,
              height: 160,
              child: Image.network(
                  'https://img.freepik.com/free-vector/health-insurance-agreement_74855-7544.jpg?size=626&ext=jpg&uid=R24508060&ga=GA1.2.1982487685.1598729466'),
            ),
            SizedBox(
              height: (10.0),
            ),
            Text(
              '  نقدر مخاوفكم واهتمامكم بشأن الخصوصية بيانتاتكم على شبكة الإنترنت.',
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'لقد تم إعداد هذه السياسة لمساعدتكم في تفهم طبيعة البيانات التي نقوم بتجميعها منكم عند زيارتكم ل موقع/تطبيق أخضر على شبكة الإنترنت وكيفية تعاملنا مع هذه البيانات الشخصية.',
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'التصفح ',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              'لم نقم بتصميم أخضر من أجل تجميع بياناتك الشخصية أثناء التصفح وإنما سيتم فقط استخدام البيانات المقدمة من قبلك بمعرفتك ومحض ارادتك ',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              'عند الاتصال بنا سيتم التعامل مع كافة البيانات المقدمة من قبلك على أساس أنها سرية. تتطلب النماذج التي يتم تقديمها من قبلك في الرد على كافة استفساراتك,ملاحظاتك, أو طلباتك من قبل هذا التطبيق أو أيا من المواقع التابعة  له',
              style: TextStyle(fontSize: 19),
            ),
          ]),
        ),
      ),
    );
  }
}
