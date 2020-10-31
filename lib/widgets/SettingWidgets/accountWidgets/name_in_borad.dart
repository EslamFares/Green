import 'package:flutter/material.dart';
import 'countrydata.dart';

Widget nameInBord(BuildContext context, int num, String name,int flagnum) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$num',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: MediaQuery.of(context).size.width / 8,
              width: MediaQuery.of(context).size.width / 8,
              decoration: BoxDecoration(
                  color:  Color(0xff1E7145),
                  border: Border.all(color:  Color(0xff1E7145)),
                  shape: BoxShape.circle),
            ),
          ),
          Expanded(flex: 5, child: Text(name)),
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.width / 11,
              width: MediaQuery.of(context).size.width / 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(countryFlags[flagnum]['flag']),
                  fit: BoxFit.cover,
                  
                ),
                color:  Color(0xff1E7145),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
             
            ),
          )
        ],
      ),
    );
  }