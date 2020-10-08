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
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'مركز المساعدة',
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
                    'https://img.freepik.com/free-vector/customer-support-service-icons-collection_98292-7568.jpg?size=338&ext=jpg&uid=R24508060&ga=GA1.2.1982487685.1598729466'),
              ),
              SizedBox(height: 15.0),
              Text(
                ' ما هو تطبيق أخضر؟ تطبيق أخضر هو تطبيق يساعدك على الوصول إلى الأفكار الرئيسية لمئات الكتب المفيدة والمشهورة  يقدم لك ملخصات لمئات الكتب في شكل نصوص مكتوبة ومسموعة مدتها عشر دقائق فقط. ',
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('----'),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'استخدام التطبيق؟ يمكنك استخدام التطبيق على وضع الزائر ',
                style: TextStyle(fontSize: 19),
              ),
              Text('الصلاحيات:'),
              Text(' تستطيع الوصول إلى ملفات مراجعات الكتب بشكل نصي وصوتي',
                  style: TextStyle(fontSize: 19)),
              Text('تستطيع الوصول إلى ملخصات الكتب المفتوحة',
                  style: TextStyle(fontSize: 19)),
              Text('تستطيع تحميل خمسة ملخصات وخمس مراجعات كتب على هاتفك',
                  style: TextStyle(fontSize: 19)),
              Text(
                'يمكنك استخدام التطبيق على وضع الاشتراك المميز',
                style: TextStyle(fontSize: 19),
              ),
              Text('#كيف يمكنني الاشتراك بشكل مميز',
                  style: TextStyle(fontSize: 19)),
              Text(
                  'تستطيع الاشتراك بشكل مميز من خلال صفحة "اشترك الان " الموجودة بالتطبيق',
                  style: TextStyle(fontSize: 19)),
              Text(
                'رسوم الاشتراك شهريا 2.5 دولار',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                'رسوم الاشتراك سنويا13.9 دولار',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                'ملاحظة: الاشتراكات تتجدد تلقائيا, مالم تلغ اشتراكك المدفوع قبل نهاية فترة الاشتراك الحالية , يمكنك تعديل اشتراكاتك وإالغاء الاشتراك التلقائي عن طريق التوجه إلى اعدادات الحساب بعد الدفع. سيصبح الإلغاء نافذا في اليوم الذي يلي اخر يوم من فترة الاشتراك الحالية وسيتم تخفيض مرتبتك إلى الخدمة المجانية',
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
