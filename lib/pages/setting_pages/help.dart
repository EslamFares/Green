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
                                  child: Material(
                                    elevation: 5,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      height: 200,
                                      child: Image.network(
                                        '${list[i].image}',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
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
                  socialMediaIcon(
                      context, 'assets/socialMediaIcon/insta.png', () {}),
                  socialMediaIcon(
                      context, 'assets/socialMediaIcon/youtube.png', () {}),
                  socialMediaIcon(
                      context, 'assets/socialMediaIcon/twitter.png', () {}),
                  socialMediaIcon(
                      context, 'assets/socialMediaIcon/facebook.png', () {}),
                ],
              ),
              SizedBox(height: 50.0),
            ],
          )),
    );
  }

  Widget socialMediaIcon(
      BuildContext context, String imgPath, Function function) {
    return InkWell(
      onTap: function,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: GestureDetector(
          onTap: (){
            print('soical');
          },
                  child: Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            height: MediaQuery.of(context).size.width / 5,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Center(
                child: Image.asset(
              imgPath,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.width / 5,
            )),
          ),
        ),
      ),
    );
  }
}
