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
        body: CustomScrollView(
          semanticChildCount: 4,
          slivers: <Widget>[
            appbar(context),
            bodyGrid(),
          ],
        ),
      ),
    );
  }

  SliverAppBar appbar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: false,
      pinned: true,
      snap: false,
      expandedHeight: 100.0,
      automaticallyImplyLeading: false,
      titleSpacing: 15.0,
      flexibleSpace: const FlexibleSpaceBar(
          titlePadding: EdgeInsets.only(right: 50, bottom: 10),
          collapseMode: CollapseMode.pin,
          title: Text('الأقسام',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900))),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff1E7145),
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  SliverGrid bodyGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: .85),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => OneOfDerpatPage()));
            },
            child: Container(
              // color: Colors.amber,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff1E7145),
                        borderRadius: BorderRadius.circular(15.0)),
                    width: MediaQuery.of(context).size.width / 3.1 - 5,
                    height: 110,
                    child: Center(
                        child: Container(
                      width: (MediaQuery.of(context).size.width / 2.9) * 1,
                      height: 70,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                DataSource.departInfo[index]['icon']),
                            fit: BoxFit.contain),
                      ),
                    )),
                    //  Icon(
                    //   DataSource.departInfo[index]['icon'],
                    //   color: Colors.white,
                    //   size: 85,
                    // ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        DataSource.departInfo[index]['name'].toString().length >
                                18
                            ? '${DataSource.departInfo[index]['name'].toString().substring(0, 16)}..'
                            : DataSource.departInfo[index]['name'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        childCount: DataSource.departInfo.length,
      ),
    );
  }
}
