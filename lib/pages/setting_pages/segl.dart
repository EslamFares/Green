import 'package:flutter/material.dart';
import 'package:green/widgets/SettingWidgets/action_appbar_button.dart';

class SgelPage extends StatefulWidget {
  @override
  _SgelPageState createState() => _SgelPageState();
}

class _SgelPageState extends State<SgelPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ThemeData.light().scaffoldBackgroundColor,
          elevation: 0,
          centerTitle: false,
          title: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green,
                    size: 25,
                  ),
                  Text('رجوع',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 16)),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            actionAppBarButton(
              context: context,
             icon: Icons.more_vert,
             function: (){print('sgel');}
            )
          ],
        ),
      ),
    );
  }
}
