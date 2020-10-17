import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'البحث',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, bottom: 8),
            child: InkWell(
              onTap: () {
                print('search');
                bottomSheetSearch(context);
              },
              child: Container(
                width: 190,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'بحث في ملخصات الكتب',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  hintText: 'بحث عن',
                  hintStyle:
                      TextStyle(fontFamily: 'cairo', color: Colors.black54),
                  suffixIcon: Icon(
                    Icons.highlight_off,
                    color: Colors.black54,
                    size: 25,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                    size: 30,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 0),
                      borderRadius: BorderRadius.circular(10.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 0),
                      borderRadius: BorderRadius.circular(10.0)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 0),
                      borderRadius: BorderRadius.circular(10.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 0),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
          ),
          // Expanded(
          //     child: Container(
          //   child: Center(
          //     child: Text(
          //       'لا توجد نتائج بحث',
          //       style: TextStyle(
          //           color: Colors.green,
          //           fontSize: 20,
          //           fontWeight: FontWeight.w700),
          //     ),
          //   ),
          // ))
        ],
      ),
    );
  }

  Future bottomSheetSearch(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context, scrollController) => Container(
        height: MediaQuery.of(context).size.height * .25,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Column(
          children: <Widget>[
            SizedBox(height: 3),
            Divider(
              endIndent: MediaQuery.of(context).size.width / 2 - 25,
              indent: MediaQuery.of(context).size.width / 2 - 20,
              thickness: 3,
              height: 5,
              color: Colors.grey[900],
            ),
            Container(
              height: (MediaQuery.of(context).size.height * .25) / 2.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ملخصات الكتب',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Divider(
              endIndent: 15.0,
              indent: 15.0,
              thickness: 1.5,
              height: 2,
              color: Colors.grey,
            ),
            Container(
              height: (MediaQuery.of(context).size.height * .25) / 2.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'مراجعات الكتب',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
