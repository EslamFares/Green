import 'package:flutter/material.dart';
import '../Data/discoverModel.dart';
import '../loading_page.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: ThemeData.light().scaffoldBackgroundColor,
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
          body: loading
              ? LoadingPage()
              : ListView.builder(
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
          QuoteWidget(qoute),
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
            textAlign: TextAlign.center,
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

// Widget quoteWidget(BuildContext context, String quote) {
//    return quoteWidget();
// }

class QuoteWidget extends StatefulWidget {
  final String quote;
  QuoteWidget(this.quote);

  @override
  _QuoteWidgetState createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {
  bool favourite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              favourite = !favourite;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height * .47,
            width: MediaQuery.of(context).size.width * .92,
            child: Card(
                color: Colors.green[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                child: Stack(
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(
                        28.0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(widget.quote,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )),
                    Positioned(
                        // top: 250,
                        // left: 250,
                        right: 10,
                        bottom: 10,
                        child: Column(
                          children: [
                            Text('أخضر',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('a5dr.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                )),
                          ],
                        )),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: 35,
                          width: 35,
                          color: Colors.greenAccent[400],
                          child: Center(
                            child: Text(
                              'I',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
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
                child: favourite
                    ? IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                          setState(() {
                            favourite = !favourite;
                          });
                        },
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            favourite = !favourite;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
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
}
