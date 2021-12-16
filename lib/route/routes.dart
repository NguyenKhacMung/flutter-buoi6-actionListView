import 'package:flutter/material.dart';
import 'package:session6/screen/Completed.dart';
import 'package:session6/screen/Detail.dart';
import 'package:session6/screen/Home.dart';
import 'package:session6/screen/MenuDetail.dart';

final Map<String, WidgetBuilder> routes = {
  Home.path: (context) => const Home(),
  Detail.path: (context) => const Detail(),
  MenuDetail.path: (context) => const MenuDetail(),
  Completed.path: (context) => const Completed(),
};
