import 'dart:ui';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:green/pages/HomePages/contant_openpage.dart';

import 'Listenpodcast.dart';

class Data {
  final String title;
  final String body;
  final String body2;
  final String footer;

  Data({this.title, this.body, this.body2, this.footer});
}

final List<Data> list = [
  Data(
    title: "مقدمة",
    body:
        'اليوم واحد من حيث كونه يومًا في كل الأحوال نحن نملك نفس الساعات والدقائق.. أليس كذلك فرغم اتفاقنا في هذا الأمر تجد أن هناك من يعمل وينجز الأعمال والمشاريع العظيمة, ومن تتراكم عليه الأعمال والواجبات حتى يتركها أو يفعل ما يقع تحت يده على عجالة وتحت ضغط في أحسن الأحوال.',
    body2:
        'هذا ما أراد الكاتب توضيحه وقام باستعراضه بين طيات الكتاب فهو يوضح لك بعض الأخطاء التي قد تصادفك في إرادتك لوقتك ويستعرض بعض الحلول لمشكلة التسويف والمماطلة ويقدم بعض النصائح النافعة التي تعينك على إدارة وقتك على نحو صحيح, واضعا بين يديك خلاصة تجاربه الذاتية حيال إدارة الوقت قراءة وتطبيقا',
    footer:
        'هذا ما أراد الكاتب توضيحه وقام باستعراضه بين طيات الكتاب فهو يوضح لك بعض الأخطاء التي قد تصادفك في إرادتك لوقتك ويستعرض بعض الحلول لمشكلة التسويف والمماطلة ويقدم بعض النصائح النافعة التي تعينك على إدارة وقتك على نحو صحيح, واضعا بين يديك خلاصة تجاربه الذاتية حيال إدارة الوقت قراءة وتطبيقا',
  ),
  Data(
    title: "حواجز البداية",
    body:
        'من منا لم يكن وراءه عمل ما سواء كان مذاكرة لامتحان أو أوراقا بحثية يجب أن تكتمل أو صفحات يجب أن تقرأأو أي شيء علينا إنجازه, ولكن كلما اقتربت لحظة البداية والانطلاق أثرنا الركون والمماطلة والتأجيل , ففي كل الأحوال تؤثر النفس الراحة والدعة على المشقة والتعب خصوصا إذا كانت مقدمة على عمل كبير.',
    body2:
        'فيشير الكاتب إلى أن هذا الشعور بالخوف أو بالأحرى القلق إزاء عدم وضوح الذي نريد إنجازه, وكيف نريد إنجازه وبأية طريق أو نظام نريد إنجازه, وما الداعي أو السبب لإنجازه, كل ذلك يثير فينا شيئا من التشوش والارتباك والقلق الذي يحجزنا عن الانطلاق والإنجاز ويوقعنا في فخ المماطلة والتأجيل والتسويف.',
    footer:
        'لذا فإن المفتاح لكسر هذا الحاجز النفسي بينك وبين العمل هو الوضوح ولا شيء لجعل أهدافك واضحة أفضل من كتابتها, فإن الاهداف الواضحة والمكتوبة لها تأثير رائع في تفكيرك, إنها تحركك وتحفزك للعمل وتعزز إبداعك وتريح طاقتك وتساعدك أكثر من أي عامل آخر للتغلب على المماطلة فكما يقول نابليون هيل هناك صفة واحدة يجب توكيدها من أجل الفوز وهي تحديد الهدف ومعرفة ما نريد والرغبة الملحة لإنجازه فاكتب أهدافك لأن ذلك يجعلها واضحة ويعينك على نحو كبير على إنجازها.',
  ),
  Data(
    title: "نوع العادات التي نمارسها",
    body:
        'إن 95 بالمئة من نجاحك في الحياة والعمل يسيطر عليه نوع العادات التي تمارسها طوال الوقت ومن الجيد معرفةأن عادة ترتيب الاولويات والتغلب على المماطلة والوصول إلى أهم واجباتك هي مهارة يمكن اكتسابها وذلك عن طريق التكرار والتدريب والتمرين,فالتدريب هو مفتاح السيطرة على أية مهارة وتعلمها  وتنميتها وبه تستطيع ترويض نفسك واكتساب أي سلوك تريده, فالعقل عضلة يقوي ويصبح أكثر قدرة بالاستعمال والمران والتدريب.',
    body2:
        'إن أمر اكتساب العادات وتطويرها أمر سهل, لكنه يحتاج إلى تركيز على ثلاثة أشياء, ألا وهي (القرار والانضباط والتصميم). فعليك أن تأخذ قرارا وعهدا على نفسك بتنمية مهارة إنهاء الواجب واضبط نفسك والتزم بالتمارين اليومية على ذلك حتى تسيطر عليها وأضف إلى ذلك العزيمة والتصميم حتى تتمكن من العادة وتصبح جزءا دائما من شخصيتك.',
    footer:
        'فكما يقول أوريسون سويت ماردن: إن بداية العادة تشبه خيطا غير مرئي لكن في كل مرة نكرر فيها الفعل نقوي الحبل المتين (اللفيف) ونضيفه إلى باقي الأسلاك إلى أن يصبح حبلا غليظا كبيرا يشدنا قطعيا وبلا رجعة في الفكر والعمل .',
  ),
  Data(
    title: "التخطيط والتحضير",
    body:
        'اليوم واحد من حيث كونه يومًا في كل الأحوال نحن نملك نفس الساعات والدقائق.. أليس كذلك فرغم اتفاقنا في هذا الأمر تجد أن هناك من يعمل وينجز الأعمال والمشاريع العظيمة, ومن تتراكم عليه الأعمال والواجبات حتى يتركها أو يفعل ما يقع تحت يده على عجالة وتحت ضغط في أحسن الأحوال.',
    body2:
        'هذا ما أراد الكاتب توضيحه وقام باستعراضه بين طيات الكتاب فهو يوضح لك بعض الأخطاء التي قد تصادفك في إرادتك لوقتك ويستعرض بعض الحلول لمشكلة التسويف والمماطلة ويقدم بعض النصائح النافعة التي تعينك على إدارة وقتك على نحو صحيح, واضعا بين يديك خلاصة تجاربه الذاتية حيال إدارة الوقت قراءة وتطبيقا',
    footer:
        'هذا ما أراد الكاتب توضيحه وقام باستعراضه بين طيات الكتاب فهو يوضح لك بعض الأخطاء التي قد تصادفك في إرادتك لوقتك ويستعرض بعض الحلول لمشكلة التسويف والمماطلة ويقدم بعض النصائح النافعة التي تعينك على إدارة وقتك على نحو صحيح, واضعا بين يديك خلاصة تجاربه الذاتية حيال إدارة الوقت قراءة وتطبيقا',
  ),
  Data(
    title: "خطوة بخطوة",
    body:
        'اليوم واحد من حيث كونه يومًا في كل الأحوال نحن نملك نفس الساعات والدقائق.. أليس كذلك فرغم اتفاقنا في هذا الأمر تجد أن هناك من يعمل وينجز الأعمال والمشاريع العظيمة, ومن تتراكم عليه الأعمال والواجبات حتى يتركها أو يفعل ما يقع تحت يده على عجالة وتحت ضغط في أحسن الأحوال.',
    body2:
        'هذا ما أراد الكاتب توضيحه وقام باستعراضه بين طيات الكتاب فهو يوضح لك بعض الأخطاء التي قد تصادفك في إرادتك لوقتك ويستعرض بعض الحلول لمشكلة التسويف والمماطلة ويقدم بعض النصائح النافعة التي تعينك على إدارة وقتك على نحو صحيح, واضعا بين يديك خلاصة تجاربه الذاتية حيال إدارة الوقت قراءة وتطبيقا',
    footer:
        'هذا ما أراد الكاتب توضيحه وقام باستعراضه بين طيات الكتاب فهو يوضح لك بعض الأخطاء التي قد تصادفك في إرادتك لوقتك ويستعرض بعض الحلول لمشكلة التسويف والمماطلة ويقدم بعض النصائح النافعة التي تعينك على إدارة وقتك على نحو صحيح, واضعا بين يديك خلاصة تجاربه الذاتية حيال إدارة الوقت قراءة وتطبيقا',
  ),
  Data(
    title: "قانون القوة المفروضة والتأجيل الإيجابي",
    body:
        'من الحقائق التي يغفل عنها الكثيرون أن الوقت المطلوب لإنهاء عمل مهم هو غالبا نفس الوقت الذي يستهلك في أداء عمل غير مهم,لكن الفرق في الشعور الذي يعقب كلا منهما, ففي الأول تشعر بالفجر والعظمة والرضا عن النفس, ,وفي الثاني تشعر بالضآلة وعدم الرضا عن نفسك.',
    body2:
        'لذا تذكر أن ما تختار أداءه على نحو متكرر سيصبح بالنتيجة عادة يصعب التخلي عنها فإذا اخترت أن تبدأ نهارك بمهمات ذات قيمة منخفضة فسيتطور ذلك ليكون عادة لك وليس ذلك مما تريد أن يكون عادة ملازمة لك, فالناجحون هم الذين يتركون اللذة القريبة ويقدمون التضحيات على المدى القصير مما يجعلهم يستمتعون أكثر ويحصلون على فائدة اعظم على المدى الطويل.',
    footer:
        'وأسلوب (أ-ب-ج-د-ه) يعينك على تحديد المهام ذات القيمة الأعلى التي لها الأولوية في الإنجاز فإن (أ) تعني شيئا مهما جدا يجب عليك أداؤه وإلا تعرضت لعواقب وخيمة و (ب) تعني شيئا مهما يجب عليك فعله لكن نتائجه معتدلة والقاعدة تقول : لا تبدأ ب (ب) ما دام (أ) موجودا, وأما (ج) فأمر يحسن بك إنجازه ولكن إذا لم تفعل فإنه لن يضرك و(د) شيء يمكن أن توكله لغيرك والقاعدة تقول:إذا  فشيء كان مهما في وقت ما لكنه لم يعد كذلك .كانت (د)تعطلك عن أداء (أ) فإنك توكلها إلى غيرك حتى تتفرغ لما هو أهم وأما (ه) ',
  ),
];

class OpenBookpage extends StatefulWidget {
  @override
  _OpenBookpageState createState() => _OpenBookpageState();
}

class _OpenBookpageState extends State<OpenBookpage>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field
  Color _color = Colors.white;
  bool isChanged = false;
  bool _visible = false;
  double _textSize = 14;
  ScrollController _scrollController;
  AnimationController _hidFabAnimController;

  @override
  void dispose() {
    _scrollController.dispose();
    _hidFabAnimController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _hidFabAnimController = AnimationController(
        vsync: this, duration: kThemeAnimationDuration, value: 1);

    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          _hidFabAnimController.forward();

          break;
        case ScrollDirection.reverse:
          _hidFabAnimController.reverse();

          break;
        case ScrollDirection.idle:
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    int curentPage = 0;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: StatefulBuilder(
          builder: (context, setState) {
            return Scaffold(
                backgroundColor:
                    isChanged ? _color = Colors.black : Colors.white,
                appBar: AppBar(
                  leading: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Color(0xff1E7145),
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  elevation: 0.0,
                  backgroundColor: isChanged ? Colors.black : Colors.white,
                  title: GestureDetector(
                    onTap: () {
                      setState(() {
                        isChanged = !isChanged;
                        // ignore: unnecessary_statements
                        isChanged == true
                            ? _color = Colors.white
                            : Colors.black;
                      });
                      print('clicked');
                    },
                    child: Icon(
                      Icons.lightbulb_outline,
                      color: Color(0xff1E7145),
                    ),
                  ),
                  centerTitle: true,
                  actions: [
                    InkWell(
                      onTap: () {
                        print('search');
                        bottomSheet(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: RawMaterialButton(
                            onPressed: () {
                              print('search');
                              bottomSheet(context);
                            },
                            elevation: 2.0,
                            fillColor: isChanged
                                ? Color(0xff2D2D2D)
                                : Colors.grey[300],
                            child: Icon(
                              Icons.more_vert,
                              color: Color(0xff1E7145),
                            ),
                            padding: EdgeInsets.all(5.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                floatingActionButton: FadeTransition(
                  opacity: _hidFabAnimController,
                  child: ScaleTransition(
                    scale: _hidFabAnimController,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Visibility(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            margin: EdgeInsets.only(right: 40, left: 40),
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ع",
                                  style: TextStyle(fontSize: 11),
                                ),
                                Expanded(
                                  child: Slider(
                                    value: _textSize,
                                    onChanged: (n) {
                                      setState(() => _textSize = n);
                                    },
                                    min: 12,
                                    max: 25,
                                  ),
                                ),
                                Text(
                                  "ع",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,
                          visible: _visible,
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Colors.transparent,
                          onPressed: null,
                          elevation: 0,
                          label: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff1E7145),
                                borderRadius: BorderRadius.circular(50.0)),
                            width: MediaQuery.of(context).size.width - 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      5,
                                  height: 50,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Contant(
                                                    dark: isChanged,
                                                  )));
                                    },
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              5,
                                      height: 50,
                                      // color:Colors.amber,
                                      child: Icon(
                                        Icons.subject,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      5,
                                  height: 50,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {
                                      setState(() {
                                        _visible = !_visible;
                                      });
                                    },
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              5,
                                      height: 50,
                                      // color:Colors.blue,
                                      child: Center(
                                        child: Text(
                                          'ع ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      5,
                                  height: 50,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ListenPodCast()));
                                    },
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              5,
                                      height: 50,
                                      // color: Colors.red,
                                      child: Icon(
                                        Icons.headset,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
                body: PageView(
                    onPageChanged: (int page) {
                      print(page);
                      setState(() {
                        curentPage = page;
                      });
                    },
                    children: [
                      for (int i = 0; i < list.length; i++) ...[
                        ListView(controller: _scrollController, children: [
                          Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: '${list[i].title}\n\n',
                                    style: TextStyle(
                                        fontSize: 23.0,
                                        color: isChanged
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                  TextSpan(
                                    text: '${list[i].body}\n\n',
                                    style: TextStyle(
                                        fontSize: _textSize,
                                        color: isChanged
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                  TextSpan(
                                    text: '${list[i].body2}\n\n',
                                    style: TextStyle(
                                        fontSize: _textSize,
                                        color: isChanged
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                  TextSpan(
                                    text: '${list[i].footer}',
                                    style: TextStyle(
                                        fontSize: _textSize,
                                        color: isChanged
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ]),
                              )),
                          // Padding(
                          //     padding: const EdgeInsets.all(20.0),
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.end,
                          //       children: <Widget>[
                          //         Row(
                          //           children: list
                          //               .asMap()
                          //               .map((index, e) {
                          //                 return MapEntry(
                          //                   index,
                          //                   ButtomBar(
                          //                     position: index,
                          //                     currentIndex: i,
                          //                   ),
                          //                 );
                          //               })
                          //               .values
                          //               .toList(),
                          //         ),
                          //         SizedBox(
                          //           height: 10,
                          //         )
                          //       ],
                          //     )),
                        ]),
                      ],
                    ]),
                bottomSheet: Container(
                  height: 10,
                  // color: Colors.red,
                  child: Row(children: [
                    for (int index = 0; index < list.length; index++) ...[
                      ButtomBar(position: index, currentIndex: curentPage),
                    ]
                  ]),
                ));
          },
        ));
  }
}

class ButtomBar extends StatelessWidget {
  final int currentIndex;
  final int position;

  const ButtomBar({
    Key key,
    @required this.currentIndex,
    this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.5),
          child: Stack(
            children: <Widget>[
              _buildContainer(
                double.infinity,
                position <= currentIndex ? Color(0xff1E7145) : Colors.grey[300],
              ),
              //
            ],
          )),
    );
  }

  Container _buildContainer(double width, Color color) {
    return Container(
      height: 3.0,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black26,
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}

Future bottomSheet(BuildContext context) {
  return showMaterialModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context, scrollController) => Container(
      height: MediaQuery.of(context).size.height * .25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0))),
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
                  'مشاركة الكتاب ',
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
                  'إضافة الكتاب',
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
