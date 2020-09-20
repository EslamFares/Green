import 'package:flutter/material.dart';
import '../discoverModel.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: 60,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'استكشف',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                onPressed: () {},
                color: Colors.black,
              ),
            ],
          ),
          body: ListView.builder(
              itemCount: discoverInfo.length,
              itemBuilder: (BuildContext context, int index) {
                return DisplayDiscoverInfo(
                  question: discoverInfo[index].question,
                  qoute: discoverInfo[index].quote,
                  hashtag: discoverInfo[index].hashtag,
                );
              })),
    );
  }
}

class DisplayDiscoverInfo extends StatelessWidget {
  final String qoute;
  final String question;
  final List<String> hashtag;

  DisplayDiscoverInfo({this.question, this.qoute, this.hashtag});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          quoteWidget(qoute),
          questionWidget(question),
          hashtagWidget(hashtag),
          Divider(
            thickness: 3,
          )
        ],
      ),
    );
  }
}

Widget questionWidget(String question) {
  return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 100.0),
        child: Center(
          child: Text(
            question,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ));
}

Widget hashtagWidget(List<String> hashtag) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: hashtag
        .map(
          (e) => Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6.0),
            child: Chip(
              label: Text(
                e,
                style: TextStyle(color: Colors.blue[900], fontSize: 13),
              ),
            ),
          ),
        )
        .toList(),
  );
}

Widget quoteWidget(String quote) {
  return Column(
    children: [
      Container(
        height: 300,
        width: 300,
        child: Card(
            color: Colors.green[900],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            child: Stack(
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(
                    28.0,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(quote,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                )),
                Positioned(
                    top: 250,
                    left: 250,
                    child: Column(
                      children: [
                        Text('أخضر',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('a5dr.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                            )),
                      ],
                    )),
                Positioned(
                  left: 250,
                  top: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 32,
                      width: 32,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'I',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 166.0),
              child: Text(
                '1 / 11',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                '10',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                  onDoubleTap: () {}, child: Icon(Icons.favorite_border)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
          ],
        ),
      ),
    ],
  );
}
