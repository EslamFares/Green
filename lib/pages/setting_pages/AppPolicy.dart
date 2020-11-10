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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 3, right: 10, bottom: 0),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0, bottom: 0, top: 3),
                        child: Text(
                          'سياسة التطبيق',
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
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: ListView(children: [
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
                      '  نقدر مخاوفكم واهتمامكم بشأن الخصوصية بيانتاتكم على شبكة الإنترنت.\n لقد تم إعداد هذه السياسة لمساعدتكم في تفهم طبيعة البيانات التي نقوم بتجميعها منكم عند زيارتكم ل (موقع/تطبيق) أخضر على شبكة الانترنت وكيفية تعاملنا مع هذه البيانات الشخصية. \n\n التصفح \n لم نقم بتصميم أخضر من أجل تجميع بياناتك الشخصية أثناء التصفح. وإنما سيتم فقط استخدام البيانات المقدمة من قبلك بمعرفتك ومحض إرادتك.\n\n عنوان بروتوكول شبكة الانترنت (Ip)\n في أي وقت تزور فيه أي موقع انترنت بما فيه أخضر سيقوم السيرفر المضيف بتسجيل عنوان بروتوكول شبكة الإنترنت الخاص بك, تاريخ ووقت الزيارة ونوع متصفح الانترنت الذي تستخدمه والعنوان URL الخاص بأي موقع من مواقع الانترنت التي تقوم بإحالتك إلى أخضر على الشبكة.\n\n أخيرا \n إن مخاوفك واهتمامك بشأن سرية وخصوصية البيانات تعتبر مسألة في غاية الأهمية بالنسبة لنا. نحن نأمل أن يتم تحقيق ذلك من خلال هذه السياسة.',
                      style: TextStyle(fontSize: 19),
                    ),
                  ]),
                ),
              ),
            ])),
      ),
    );
  }
}
