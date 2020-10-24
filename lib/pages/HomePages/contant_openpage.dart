import 'package:flutter/material.dart';

class Contant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xff1E7145),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'المحتوى',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff1E7145),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    ' حواجز البداية',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'الكثير لنعرفه',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'نوع العادات التي نمارسها',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'التخطيط والتحضير',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'خطوة بخطوة',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'قانون القوة المفروضة والتأجيل',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'الصورة الذاتية والانجاز',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'وختاما',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
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
