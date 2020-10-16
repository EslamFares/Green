import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineCharts extends StatefulWidget {
  @override
  _ChartsInfoState createState() => _ChartsInfoState();
}

class _ChartsInfoState extends State<LineCharts> {
  Widget build(BuildContext context) {
    const yearTextStyle = TextStyle(
        fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          body: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 330,
                child: Container(
                  height: MediaQuery.of(context).size.width / 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.topRight,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    ' نقطة ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '11',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'آخر أسبوع',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          width: MediaQuery.of(context).size.width - 30,
                          height: 250,
                          child: LineChart(
                            LineChartData(
                              borderData: FlBorderData(
                                  show: true,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 4,
                                    ),
                                    right: BorderSide(
                                        color: Colors.black, width: 4),
                                  )),
                              lineTouchData: LineTouchData(enabled: true),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 1),
                                    FlSpot(0, 1),
                                    FlSpot(3, 1),
                                    FlSpot(4, 0),
                                    FlSpot(5, 6),
                                    FlSpot(5, 3),
                                    // FlSpot(5, 3),
                                  ],
                                  isCurved: false,
                                  barWidth: 2,
                                  colors: [
                                    Colors.green[800],
                                  ],
                                  dotData: FlDotData(
                                    show: false,
                                  ),
                                ),
                              ],
                              minY: 0,
                              titlesData: FlTitlesData(
                                bottomTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 4,
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return 'Sun';

                                        case 1:
                                          return 'Sat';
                                        case 2:
                                          return 'Fri';
                                        case 3:
                                          return 'The';
                                        case 4:
                                          return 'Wed';

                                        case 5:
                                          return 'Tue';
                                        case 6:
                                          return 'Mon';
                                        default:
                                          return '';
                                      }
                                    }),
                                leftTitles: SideTitles(
                                  showTitles: false,
                                  getTitles: (value) {
                                    return ' {}';
                                  },
                                ),
                              ),
                              axisTitleData: FlAxisTitleData(
                                  bottomTitle: AxisTitle(
                                      showTitle: true,
                                      margin: 0,
                                      titleText: '',
                                      textStyle: yearTextStyle,
                                      textAlign: TextAlign.left)),
                              gridData: FlGridData(
                                show: false,
                                checkToShowHorizontalLine: (double value) {
                                  return value == 1 ||
                                      value == 2 ||
                                      value == 3 ||
                                      value == 4 ||
                                      value == 5 ||
                                      value == 6 ||
                                      value == 7;
                                },
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 330,
                child: Container(
                  height: MediaQuery.of(context).size.width / 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.topRight,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    ' نقطة ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '17',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'آخر شهر',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          width: MediaQuery.of(context).size.width - 30,
                          height: 250,
                          child: LineChart(
                            LineChartData(
                              borderData: FlBorderData(
                                  show: true,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 4,
                                    ),
                                    right: BorderSide(
                                        color: Colors.black, width: 4),
                                  )),
                              lineTouchData: LineTouchData(enabled: true),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 1),
                                    FlSpot(0, 2),
                                    FlSpot(3, 2),
                                    FlSpot(4, 1),
                                    FlSpot(5, 6),
                                    // FlSpot(6, 4),
                                    //   FlSpot(5, 3),
                                  ],
                                  isCurved: false,
                                  barWidth: 2,
                                  colors: [
                                    Colors.green[800],
                                  ],
                                  dotData: FlDotData(
                                    show: false,
                                  ),
                                ),
                              ],
                              minY: 0,
                              titlesData: FlTitlesData(
                                bottomTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 4,
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return '6';

                                        case 1:
                                          return '5';
                                        case 2:
                                          return '4';
                                        case 3:
                                          return '3';
                                        case 4:
                                          return '2';

                                        case 5:
                                          return '1';
                                        //case 6:
                                        //  return 'Mon';
                                        default:
                                          return '';
                                      }
                                    }),
                                leftTitles: SideTitles(
                                  showTitles: false,
                                  getTitles: (value) {
                                    return ' {}';
                                  },
                                ),
                              ),
                              axisTitleData: FlAxisTitleData(
                                  bottomTitle: AxisTitle(
                                      showTitle: true,
                                      margin: 0,
                                      titleText: '',
                                      textStyle: yearTextStyle,
                                      textAlign: TextAlign.left)),
                              gridData: FlGridData(
                                show: false,
                                checkToShowHorizontalLine: (double value) {
                                  return value == 1 ||
                                      value == 2 ||
                                      value == 3 ||
                                      value == 4 ||
                                      value == 5 ||
                                      value == 6 ||
                                      value == 7;
                                },
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 330,
                child: Container(
                  height: MediaQuery.of(context).size.width / 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.topRight,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    ' نقطة ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'آخر سنة',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          width: MediaQuery.of(context).size.width - 30,
                          height: 250,
                          child: LineChart(
                            LineChartData(
                              borderData: FlBorderData(
                                  show: true,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 4,
                                    ),
                                    right: BorderSide(
                                        color: Colors.black, width: 4),
                                  )),
                              lineTouchData: LineTouchData(enabled: true),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 1),
                                    FlSpot(1, 2),
                                    FlSpot(3, 1),
                                    FlSpot(3, 1),
                                    FlSpot(3, 1),
                                    FlSpot(4, 5),
                                    FlSpot(4, 5),
                                    FlSpot(4, 5),
                                    FlSpot(4, 5),
                                    FlSpot(5, 3),
                                    FlSpot(5, 3),
                                  ],
                                  isCurved: false,
                                  barWidth: 2,
                                  colors: [
                                    Colors.green[800],
                                  ],
                                  dotData: FlDotData(
                                    show: false,
                                  ),
                                ),
                              ],
                              minY: 0,
                              titlesData: FlTitlesData(
                                bottomTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 4,
                                    //   textStyle: yearTextStyle,
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return 'oct';

                                        case 1:
                                          return 'nov';
                                        case 2:
                                          return 'dec';
                                        case 3:
                                          return 'jan';
                                        case 4:
                                          return 'feb';

                                        case 5:
                                          return 'mar';
                                        case 6:
                                          return 'apr';
                                        case 7:
                                          return 'may';

                                        case 8:
                                          return 'jun';
                                        case 6:
                                          return 'jul';
                                        case 6:
                                          return 'aug';
                                        case 6:
                                          return 'sep';
                                        default:
                                          return '';
                                      }
                                    }),
                                leftTitles: SideTitles(
                                  showTitles: false,
                                  getTitles: (value) {
                                    return ' {}';
                                  },
                                ),
                              ),
                              axisTitleData: FlAxisTitleData(
                                  //  leftTitle: AxisTitle(
                                  //    showTitle: false, titleText: '', margin: 0),
                                  // rightTitle: AxisTitle(
                                  //    showTitle: false, titleText: '', margin: 0),
                                  bottomTitle: AxisTitle(
                                      showTitle: true,
                                      margin: 0,
                                      titleText: '',
                                      textStyle: yearTextStyle,
                                      textAlign: TextAlign.left)),
                              gridData: FlGridData(
                                show: false,
                                checkToShowHorizontalLine: (double value) {
                                  return value == 1 ||
                                      value == 2 ||
                                      value == 3 ||
                                      value == 4 ||
                                      value == 5 ||
                                      value == 6 ||
                                      value == 7;
                                },
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
