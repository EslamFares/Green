import 'package:flutter/material.dart';

class Contant extends StatelessWidget {
 final bool dark;
 Contant({@required this.dark});
  @override
  Widget build(BuildContext context) {
    Color changedColoText = dark?Colors.white:Colors.black;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor:dark?Colors.black: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
            Icons.arrow_back,
            color: dark?Colors.white: Color(0xff1E7145),
          ),
          ),
          backgroundColor:dark?Colors.black: Colors.white,
          title: Text(
            'المحتوى',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:dark?Colors.white: Color(0xff1E7145),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'مقدمة',
                    style: TextStyle(
                      color: changedColoText,
                      fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                       color: changedColoText,
                      fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    ' حواجز البداية',
                    style: TextStyle(
                       color: changedColoText,
                      fontWeight: FontWeight.bold, fontSize: 21),
                  )
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    '2',
                    style: TextStyle(
                       color: changedColoText,
                      fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'الكثير لنعرفه',
                    style: TextStyle(
                       color: changedColoText,
                      fontWeight: FontWeight.bold, fontSize: 21),
                  )
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    '3',
                    style: TextStyle(
                       color: changedColoText,
                      fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'نوع العادات التي نمارسها',
                    style: TextStyle(
                       color: changedColoText,
                      fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    '4',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'التخطيط والتحضير',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    '5',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'خطوة بخطوة',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    '6',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'قانون القوة المفروضة والتأجيل',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    '7',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'الصورة الذاتية والانجاز',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    '8',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'وختاما',
                    style: TextStyle( color: changedColoText,fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
