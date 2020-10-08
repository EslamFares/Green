import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';
import 'one_of_depart.dart';
class DepartmentsPage extends StatefulWidget {
  @override
  _DepartmentsPageState createState() => _DepartmentsPageState();
}

class _DepartmentsPageState extends State<DepartmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.green[800],
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 15, right: 10),
                child: Row(
                  children: <Widget>[
                    Text('الأقسام',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900))
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: GridView.builder(
                      itemCount: DataSource.departInfo.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: .8),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OneOfDerpatPage()));
                          },
                          child: Container(
                            // color: Colors.amber,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green[700],
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  width:
                                      MediaQuery.of(context).size.width / 3 - 5,
                                  height: 115,
                                  child: Icon(
                                    DataSource.departInfo[index]['icon'],
                                    color: Colors.white,
                                    size: 85,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      DataSource.departInfo[index]['name']
                                                  .toString()
                                                  .length >
                                              18
                                          ? '${DataSource.departInfo[index]['name'].toString().substring(0, 16)}..'
                                          : DataSource.departInfo[index]['name']
                                              .toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
