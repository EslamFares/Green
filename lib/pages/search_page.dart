import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ThemeData.light().scaffoldBackgroundColor,
        title: Text(
          'البحث',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
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
                    Icons.delete_forever,
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
          Expanded(
              child: Container(
            child: Center(
              child: Text('لا توجد نتائج بحث',
          style: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.w700),),
            ),
          ))
        ],
      ),
    );
  }
}
