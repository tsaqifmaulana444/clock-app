import 'package:flutter/material.dart';
import 'package:flutter_expert/pages/home.dart';
import 'package:flutter_expert/pages/choose_location.dart';
import 'package:flutter_expert/pages/loading.dart';


void main() => runApp (MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
