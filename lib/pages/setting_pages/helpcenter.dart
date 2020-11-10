import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
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
                          'مركز المساعدة',
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
                  padding: const EdgeInsets.only(right: 15.0),
                  child: ListView(
                    children: [
                      Container(
                        width: 400,
                        height: 160,
                        child: Image.network(
                            'https://img.freepik.com/free-vector/customer-support-service-icons-collection_98292-7568.jpg?size=338&ext=jpg&uid=R24508060&ga=GA1.2.1982487685.1598729466'),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        '#ما هو تطبيق أخضر؟  \n تطبيق أخضر هو تطبيق يساعدك على الوصول إلى الأأفكار الرئيسية لمئات الكتب المفيدة والمشهورة يقدم لك ملخصات لمئات الكتب في شكل نصوص مكتوبة ومسموعة مدتها عشر دقائق فقط. \n \n ---- \n \n #استخدام التطبيق؟\n يمكنك استخدام التطبيق على وضع الزائر \n \n الصلاحيات:\n \n -تستطيع الوصول إلى مراجعات الكتب بشكل نصي وبشكل صوتي\n يمكنك استخدام التطبيق على وضع الاشتراك غير المميز  \n \n  الصلاحيات: \n \n تستطيع الوصول إلى ملخصات الكتب المفتوحة \n -تستطيع تحميل خمسة ملخصات وخمس مراجعات كتب على هاتفك\n \n -تستطيع تحميل عدد لا نهائي من ملخصات كتب وعدد لا نهائي من مراجعات كتب على هاتفك \n \n ---- \n # كيف يمكنني الاشتراك بشكل مميز من خلال صفحة "اشترك الان" الموجودة بالتطبيق \n رسوم الاشتراك سنويا ثلاثون دولار \n رسم الاشتراك شهريا خمسة دولار\n \n  ملاحظة: الاشتراكات تتجدد تلقائيا, ما لم تلغ اشتراكك المدفوع قبل نهاية فترة الاشتراك الحالية  وسيتم تخفيض مرتبتك إلى الخدمة المجانية. وفي حال أحقيتك في استرداد أموالك المدفوعة , فيجب أن تتصل بقسم دعم العملاء وحين نرد الأموال سوف نرد المبلغ باستخدام الطريقة التي استخدمتها للدفع.\n ---- # هل يمكنني تحميل ملخصات الكتب على هاتفي؟\n \n نعم \n #هل لديك أسئلة أخرى؟\n تستطيع التواصل معنا من خلال أي منصة لنا على شبكات التواصل الإجتماعي أو من خلال بريد الدعم الفني \n\n support@a5dr.com',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
