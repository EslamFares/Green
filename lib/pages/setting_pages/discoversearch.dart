import 'package:flutter/material.dart';

class DiscoverSearch extends StatefulWidget {
  @override
  _DiscoverSearchState createState() => _DiscoverSearchState();
}

class _DiscoverSearchState extends State<DiscoverSearch> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Container(
                height: 38,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: 'بحث عن',
                    hintStyle:
                        TextStyle(fontFamily: 'cairo', color: Colors.black54),
                    suffixIcon: Icon(
                      Icons.highlight_off,
                      color: Colors.black12,
                      size: 25,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black12,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.only(top: 7),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[350]),
                        borderRadius: BorderRadius.circular(10.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[350]),
                        borderRadius: BorderRadius.circular(10.0)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[350]),
                        borderRadius: BorderRadius.circular(10.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[350]),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    'إلغاء',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1E7145),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey[350],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Row(children: [
                  Chip(
                    label: Text(
                      '#تحسين_الذات',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#ريادة_أعمال',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#تفكير_إيجابي',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Row(children: [
                  Chip(
                    label: Text(
                      '#مشاعر_سيئة',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#إرشاد_أسري',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#ُثقافة_مالية',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Row(children: [
                  Chip(
                    label: Text(
                      '#بناء_العلاقات',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#تفكير_إيجابي',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#صحة_نفسية',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Row(children: [
                  Chip(
                    label: Text(
                      '#تواصل_فعال',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#تحفيز_الآخرين',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#ريادة_أعمال',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Row(children: [
                  Chip(
                    label: Text(
                      '#فلسفة_وفكر',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Chip(
                    label: Text(
                      '#حكم_واقتباسات',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
