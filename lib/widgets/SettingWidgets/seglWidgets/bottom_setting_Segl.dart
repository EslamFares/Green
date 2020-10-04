  import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future bottomSettingInSegl(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context, scrollController) => Container(
        height: MediaQuery.of(context).size.height * .45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height * .45) / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '- السجل -',
                    style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1.5,
              height: 2,
              color: Colors.grey,
            ),
            Container(
              height: (MediaQuery.of(context).size.height * .45) / 4.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'حذف الكتب من السجل',
                    style: TextStyle(fontWeight: FontWeight.w700),
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
              height: (MediaQuery.of(context).size.height * .45) / 4.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'حذف أفكار الكتب من السجل',
                    style: TextStyle(fontWeight: FontWeight.w700),
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
              height: (MediaQuery.of(context).size.height * .45) / 4.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'حذف الجميع من السجل ',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }