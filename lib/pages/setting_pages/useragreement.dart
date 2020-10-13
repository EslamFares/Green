import 'package:flutter/material.dart';

class Useragreement extends StatefulWidget {
  @override
  _UseragreementState createState() => _UseragreementState();
}

class _UseragreementState extends State<Useragreement> {
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
                            ' اتفاقية الاستخدام',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 440,
                    height: 160,
                    child: Image.network(
                        'https://image.freepik.com/free-vector/smiling-business-partners-after-good-deal_94753-144.jpg'),
                  ),
                  SizedBox(
                    height: (10.0),
                  ),
                  Text(
                    'مرحبا وأهلا بك في شروط استخدام أخضر وأحكامه.',
                    style: TextStyle(fontSize: 19),
                  ),
                  Text(
                      'style: TextStyle(fontSize: 19),,يقدم أخضر خدمات مخصصة تتضمن عرض وتلخيص الكتب بالاضافةإلى منتجات وخدمات أخرى يمكن تطويرها من وقت لاخر.'),
                  Text(
                    'تتضمن الاتفاقيات الشروط المتعلقة بالتغييرات المستقبلية على الاتقاقيات وضوابط التصدير و عمليات التجديد التلقائية وحدود المسئولية والخصوصية ',
                    style: TextStyle(fontSize: 19),
                  ),
                  Text(
                    'يجوز أن نجري أحيانا تغييرات على الاتفاقيات لاسباب  صالحة مثل تحسين الوظائف أو ميزات جديدة الى الخدمة حين نقوم بالتغييرات على الاتفاقيات سنرسل اليك اشعارا يكون مناسبا للظروف الكامنة مثلا من خلال عرض إشعار بارز أو طلب موافقتك ضمن الخدمة أو من خلال إرسال بريد إلكتروني إليك ف ',
                    style: TextStyle(fontSize: 19),
                  ),
                  Text(
                    'يجوز من وقت لاخر أن نقدم فترات تجريبية لاشتراكات مدفوعة لفترة محدودة من دون مقابل بالنسبة إلى بعض الفترات التجريبية سنطلب منك تقديم تفاصيل الدفع التي تعتمدها لبدء الفترة التجريبية عللى أساس شهري متكرر في حال لم تكن ترغب في تحمل هذه الرسوم فيجب أن تلغي الاشتراك المدفوع المطبق قبل نهاية الفترة التجريبية',
                    style: TextStyle(fontSize: 19),
                  )
                ]))));
  }
}
