import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'bookreveiw_carouselchild.dart';

Widget bookReviewCarousel(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              // color: Colors.red,
              child: Carousel(
                images: [
                  bookReveiwCarouselChild(context, 0),
                  bookReveiwCarouselChild(context, 1),
                  bookReveiwCarouselChild(context, 2),
                  bookReveiwCarouselChild(context, 3),
                  bookReveiwCarouselChild(context, 4),
                ],
                dotSize: 6.0,
                dotSpacing: 15.0,
                dotColor: Colors.grey,
                dotPosition: DotPosition.bottomCenter,
                dotIncreasedColor: Colors.green[900],
                indicatorBgPadding: 5.0,
                dotBgColor: ThemeData.light().scaffoldBackgroundColor,
                borderRadius: true,
              ),
            );
  }