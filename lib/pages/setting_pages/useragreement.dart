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
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                          'اتفاقية الاستخدام',
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
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                  child: ListView(children: [
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
                      'مرحبا وأهلا بك في شروط استخدام أخضر وأحكامه.\nيقدم أخضر خدمات مخصصة تتضمن عرض وتلخيص الكتب بالاضافةإلى منتجات وخدمات أخرى يمكن تطويرها من وقت لاخر.\n\n تتضمن الاتفاقيات الشروط المتعلقة بالتغييرات المستقبلية على الاتفاقيات وضوابط التصدير وعمليات التجديد وحدود المسؤولية والخصوصية.\n  يجوز أن نجري أحيانا تغييرات على الاتفاقيات لاسباب  صالحة مثل تحسين الوظائف أو ميزات جديدة الى الخدمة حين نقوم بالتغييرات على الاتفاقيات سنرسل اليك اشعارا يكون مناسبا للظروف الكامنة مثلا من خلال عرض إشعار بارز أو طلب موافقتك ضمن الخدمة أو من خلال إرسال بريد إلكتروني إليك ف  \n  يجوز من وقت لاخر أن نقدم فترات تجريبية لاشتراكات مدفوعة لفترة محدودة من دون مقابل بالنسبة إلى بعض الفترات التجريبيبة, سنطلب منك تقديم تفاصيل الدفع التي تعتمدها لبدء الفترة التجريبية ومن خلال توفير هذه التفاصيل, توافق أن نبدأ تلقائيا بفرض رسوم عليك مقابل الاشتراك المدفوع في اليوم الأول الذي يلي انتهاء الفترة التجريبية على أساس شهري متكرر. في حال لم تكن ترغب في تحمل هذه الرسوم فيجب أن تلغي الاشتراك المدفوع المطبق قبل نهاية الفترة التجريبية.',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
              )
            ])));
  }
}
