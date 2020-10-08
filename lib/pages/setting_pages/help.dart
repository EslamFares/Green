import 'package:flutter/material.dart';
import 'package:green/pages/setting_pages/useragreement.dart';
import 'AppPolicy.dart';
import 'compconditions.dart';
import 'helpcenter.dart';

class Data {
  final String image;
  final String title;

  Data({this.image, this.title});
}

List<Data> list = [
  Data(
    image:
        'https://img.freepik.com/free-vector/customer-support-service-icons-collection_98292-7568.jpg?size=338&ext=jpg&uid=R24508060&ga=GA1.2.1982487685.1598729466',
    title: 'مركز المساعدة',
  ),
  Data(
    image:
        'https://image.freepik.com/free-vector/smiling-business-partners-after-good-deal_94753-144.jpg',
    title: 'اتفاقية الاستخدام',
  ),
  Data(
    image:
        'https://t4.ftcdn.net/jpg/02/35/67/27/240_F_235672714_MVmhbqM4K88gLBAgN0trZEvH6XDZ6yHI.jpg',
    title: ' شروط المسابقة ',
  ),
  Data(
    image:
        'https://img.freepik.com/free-vector/health-insurance-agreement_74855-7544.jpg?size=626&ext=jpg&uid=R24508060&ga=GA1.2.1982487685.1598729466',
    title: 'سياسة التطبيق',
  ),
];

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
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
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding:
                      EdgeInsets.only(left: 13, top: 13, right: 13, bottom: 13),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'مساعدة',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 15),
                    width: double.infinity,
                    child: GridView.count(
                      childAspectRatio: 0.8,
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      children: [
                        for (int i = 0; i < list.length; i++) ...[
                          GestureDetector(
                            onTap: () {
                              if (i == 0) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HelpCenter()));
                              } else if (i == 1) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Useragreement()));
                              } else if (i == 2) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ComConditions()));
                              } else {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AppPolicy()));
                              }
                            },
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Image.network('${list[i].image}'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      '${list[i].title}',
                                    )),
                              ],
                            ),
                          ),
                        ]
                      ],
                    )),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Image.network(
                            'https://tse2.mm.bing.net/th?id=OIP.MZ8_ysmKtnmRyIajYN_nLgAAAA&pid=Api&P=0&w=300&h=300')),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Image.network(
                            'https://tse4.mm.bing.net/th?id=OIP.7yOg7GNHSnRH91EBNLM_0gHaFa&pid=Api&P=0&w=233&h=171')),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Image.network(
                            ' https://tse1.mm.bing.net/th?id=OIP.HAQgKYEC29DUhrS7ZGn-4AHaHa&pid=Api&P=0&w=300&h=300')),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Image.network(
                            'https://tse1.mm.bing.net/th?id=OIP.MzldIcrgHd0Jvhg3w8TdvAAAAA&pid=Api&P=0&w=300&h=300')),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
