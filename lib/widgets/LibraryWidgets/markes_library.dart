import 'package:flutter/material.dart';

class MarkesLibrary extends StatelessWidget {
  const MarkesLibrary({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.lightbulb_outline,
              size: 50,
              color: Colors.green,
            ),
            SizedBox(height: 10),
            Text(
              'لا توجد علامات مرجعية',
              style: TextStyle(
                  color: Colors.green[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}
