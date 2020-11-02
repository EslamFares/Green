import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';
import 'package:green/pages/HomePages/show_book_data.dart';

class ShowBook extends StatefulWidget {
  @override
  _ShowBookState createState() => _ShowBookState();
}

class _ShowBookState extends State<ShowBook> {
  bool fontSizeShow = false;
  bool listenBok = false;
  double _currentSliderValue = 14;
  double _musicValue = 0;
  String labelSlider(double currentSliderValue) {
    String label = '';
    if (currentSliderValue == 14) {
      label = 'صغير جدا';
    } else if (currentSliderValue == 16) {
      label = 'صغير ';
    } else if (currentSliderValue == 18) {
      label = 'عادى';
    } else if (currentSliderValue == 20) {
      label = 'كبير ';
    } else if (currentSliderValue == 22) {
      label = 'كبير جدا ';
    } else if (currentSliderValue == 24) {
      label = 'ضخم';
    } else
      label = '';
    return label;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.white,
          // bottomSheet: bottomSheet(context),
          body: Stack(
            children: [
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                      // elevation: 2,
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
                        // _buildList(20),
                        [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Colors.grey,
                                endIndent: 20,
                                height: 2,
                                thickness: 1,
                                indent: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Row(
                                  children: [
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.timer,
                                      color: Colors.green,
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text('18 دقيقة'),
                                    SizedBox(width: 30),
                                    Icon(
                                      Icons.bookmark,
                                      color: Colors.green,
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text('9 صفحة')
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                endIndent: 20,
                                height: 2,
                                thickness: 1,
                                indent: 20,
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapText(ShowBookData.showBookData[0]['first']),
                                wrapText(ShowBookData.showBookData[0]['sec']),
                                wrapText(ShowBookData.showBookData[0]['third']),
                                Wrap(
                                  children: [
                                    Text(
                                      '${ShowBookData.showBookData[0]['for']}',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: _currentSliderValue > 18
                                              ? _currentSliderValue
                                              : 18),
                                    ),
                                  ],
                                ),
                                wrapText(ShowBookData.showBookData[0]
                                    ['forContain'][0]),
                                wrapText(ShowBookData.showBookData[0]
                                    ['forContain'][1]),
                                wrapText(ShowBookData.showBookData[0]
                                    ['forContain'][2]),
                                Wrap(
                                  children: [
                                    Text(
                                      '${ShowBookData.showBookData[0]['writer']}',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: _currentSliderValue > 18
                                              ? _currentSliderValue
                                              : 18),
                                    ),
                                  ],
                                ),
                                wrapText(ShowBookData.showBookData[0]
                                    ['writerContaine'][0]),
                                wrapText(ShowBookData.showBookData[0]
                                    ['writerContaine'][1]),
                                wrapText(ShowBookData.showBookData[0]
                                    ['writerContaine'][2]),
                                wrapText(ShowBookData.showBookData[0]
                                    ['writerContaine'][3]),
                                wrapText(ShowBookData.showBookData[0]
                                    ['writerContaine'][4]),
                                SizedBox(height: 100),
                              ],
                            ),
                          )
                        ]),
                  ),
                ],
              ),
              fontSizeShow
                  ? fontSizeSlider(context)
                  : Positioned(
                      bottom: 15,
                      left: 50,
                      right: 50,
                      child: Container(
                          width: 50, height: 50, color: Colors.transparent)),
              listenBok
                  ? musicSlider(context)
                  : Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                          width: 50, height: 50, color: Colors.transparent)),
              bottomSheet(context)
            ],
          )),
    );
  }

  Wrap wrapText(var path) {
    return Wrap(
      children: [
        Text(
          '$path',
          style: TextStyle(fontSize: _currentSliderValue),
        ),
      ],
    );
  }

  Widget bottomSheet(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 50,
      left: 50,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: 55,
        decoration: BoxDecoration(
            color:  Color(0xff1E7145),
            borderRadius: BorderRadius.circular(50.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: (MediaQuery.of(context).size.width / 1.4) / 2.1 - 5,
              height: 50,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    listenBok = false;
                    fontSizeShow = !fontSizeShow;
                  });
                  print('fontSizeShow $fontSizeShow');
                },
                child: Container(
                    // color: Colors.amber,
                    width: (MediaQuery.of(context).size.width / 1.4) / 2.1 - 5,
                    height: 50,
                    child: Center(
                      child: Text(
                        'ع',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800),
                      ),
                    )),
              ),
            ),
            Container(
              width: 1,
              height: 60,
              color: Colors.grey,
            ),
            Container(
              width: (MediaQuery.of(context).size.width / 1.4) / 2.1 - 5,
              height: 50,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    fontSizeShow = false;
                    listenBok = !listenBok;
                  });
                },
                child: Container(
                  // color: Colors.purple,
                  width: (MediaQuery.of(context).size.width / 1.4) / 2.1 - 5,
                  height: 50,
                  child: Icon(
                    Icons.headset,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
        // child: C,
      ),
    );
  }

  Positioned musicSlider(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    width: (MediaQuery.of(context).size.width -
                                (MediaQuery.of(context).size.width / 1.7)) /
                            2 -
                        5,
                    child: Center(
                      child: Text(
                        '${_musicValue.toString().length > 4 ? _musicValue.toString().substring(0, 4) : _musicValue}',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            fontFamily:
                                DefaultTextStyle.of(context).style.fontFamily),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: MediaQuery.of(context).size.width / 1.7,
                      height: 30,
                      // color: Colors.purple,
                      child: Slider(
                        value: _musicValue,
                        min: 0,
                        max: 14,
                        // divisions: 20,
                        onChanged: (double value) {
                          setState(() {
                            _musicValue = value;
                          });
                        },
                      )),
                  Container(
                    width: (MediaQuery.of(context).size.width -
                                (MediaQuery.of(context).size.width / 1.7)) /
                            2 -
                        5,
                    // color: Colors.teal,
                    child: Center(
                      child: Text(
                        '14:00',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            fontFamily:
                                DefaultTextStyle.of(context).style.fontFamily),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    // color:Colors.green,
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.replay_10,
                            size: 25, color: Colors.grey))),
                Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          size: 35,
                        ))),
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.replay_5,
                            size: 25, color: Colors.grey))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Positioned fontSizeSlider(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 30,
      right: 30,
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ع',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily:
                          DefaultTextStyle.of(context).style.fontFamily),
                ),
                SizedBox(width: 15),
                Container(
                    padding: EdgeInsets.all(2),
                    width: (MediaQuery.of(context).size.width - 60) / 1.4,
                    height: 80,
                    // color: Colors.amber,
                    child: Slider(
                      value: _currentSliderValue,
                      min: 14,
                      max: 24,
                      divisions: 5,
                      label: labelSlider(_currentSliderValue),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                        print(_currentSliderValue.toString().substring(0, 2));
                      },
                    )),
                SizedBox(width: 10),
                Text(
                  'ع',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      fontFamily:
                          DefaultTextStyle.of(context).style.fontFamily),
                ),
              ],
            ),
          ),
        ),
      ),
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
          color: Colors.white, //Colors.purple,
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
                              decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: NetworkImage(DataSource.booksInfo[1]
                                      ['imgurl']),
                                  fit: BoxFit.contain),
                            ),
                            // child: FlutterLogo(),
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
                    height: 70,
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
}
