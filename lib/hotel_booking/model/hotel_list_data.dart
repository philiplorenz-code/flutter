import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/design_course/home_design_course.dart';
import 'package:best_flutter_ui_templates/fitness_app/fitness_app_home_screen.dart';
import 'package:best_flutter_ui_templates/hotel_booking/hotel_home_screen.dart';
import 'package:best_flutter_ui_templates/introduction_animation/introduction_animation_screen.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:best_flutter_ui_templates/hotel_booking/calendar_popup_view.dart';
import 'package:best_flutter_ui_templates/hotel_booking/hotel_list_view.dart';
import 'package:best_flutter_ui_templates/hotel_booking/model/hotel_list_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../design_course/course_info_screen.dart';

class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = '',
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/hotel/bildDominosMannheim.png',
      titleTxt: 'Dominos Pizza Mannheim Mitte',
      subTxt: 'S6 21, 68159 Mannheim',
      dist: 2.0, // "to city" muss weg -> 2.0km ohne "to city"
      reviews: 80,
      rating: 4.4, // DB Gruppe avg Funktion aus allen Einzelbewertungen
    ),
    HotelListData(
      imagePath: 'assets/hotel/bildJamysBurgerMannheim.png',
      titleTxt: 'Jamys Burger Mannheim',
      subTxt: 'Q1 9, 68161 Mannheim',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
    ),
    HotelListData(
      imagePath: 'assets/hotel/bildmemoiresdindochine.png',
      titleTxt: 'Memoires Dindochine am Paradeplatz',
      subTxt: 'C2 10A, 68159 Mannheim',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
    ),
    HotelListData(
      imagePath: 'assets/hotel/bildrestaurantistanbul.png',
      titleTxt: 'Restaurant Istanbul',
      subTxt: 'H1 14, 68159 Mannheim',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
    ),
  ];
}
