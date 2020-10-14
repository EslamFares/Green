import 'package:flutter/material.dart';

class ShowBook extends StatefulWidget {
  @override
  _ShowBookState createState() => _ShowBookState();
}

class _ShowBookState extends State<ShowBook> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              elevation: 5,
              backgroundColor: Color(0xff1E7145),
              floating: true,
              pinned: true,
              snap: false,
              expandedHeight: MediaQuery.of(context).size.height / 1.5,
              automaticallyImplyLeading: false,
              leading: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              titleSpacing: 15.0,
              flexibleSpace: topAppBar(context),
              bottom: bottomAppBar(context)),
          SliverList(
            delegate: new SliverChildListDelegate(
              _buildList(50),
            ),
          ),
        ],
      )),
    );
  }

  PreferredSize bottomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(110.0),
      child: Container(
        height: 110,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // IconButton(
                //     icon: Icon(
                //       Icons.close,
                //       color: Colors.grey,
                //       size: 30,
                //     ),
                //     onPressed: () {
                //       Navigator.pop(context);
                //     }),
                Spacer(),
                Text(
                  'ابدأ بالاهم ولو كان صعبا',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    // color:Colors.green,
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.bookmark,
                          color: Color(0xff1E7145),
                        ))),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.save_alt))),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.share))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  FlexibleSpaceBar topAppBar(BuildContext context) {
    return FlexibleSpaceBar(
      titlePadding: EdgeInsets.only(right: 50, bottom: 110),
      collapseMode: CollapseMode.pin,
      centerTitle: true,
      background: Container(
          // height: 200,
          // width: 200,
          color: Colors.white,//Colors.purple,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.5 - 227,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff1E7145),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
              ),
              Positioned(
                top: 65,
                right: MediaQuery.of(context).size.width / 2 - 110,
                left: MediaQuery.of(context).size.width / 2 - 110,
                child: Material(
                  elevation: 20,
                  type: MaterialType.card,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 230,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Color(0xff1E7145),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                            height: 200,
                            width: 240,
                            child: FlutterLogo(),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                              height: 35,
                              width: 240,
                              color: Colors.black12,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      'بريان تريسي',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 115,
                  right: MediaQuery.of(context).size.width / 2 - 110,
                  left: MediaQuery.of(context).size.width / 2 - 110,
                  child: Container(
                    width: 240,
                    height: 65,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Text(
                          'ابدأ بالاهم ولو كان صعبا',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'النمو الشخصى',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ))
            ],
          )),
      // title: Text('كتاب ',
      //     style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 14.0,
      //         fontWeight: FontWeight.w900))
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}
