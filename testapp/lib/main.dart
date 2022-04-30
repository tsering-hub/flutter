import 'package:flutter/material.dart';
import 'package:testapp/calaculatorscreen.dart';
import 'package:testapp/container.dart';
import 'package:testapp/gridviewscreen.dart';
import 'package:testapp/outputscreen.dart';

import 'add.dart';
import 'arithmeticscreen.dart';
import 'containerflexible.dart';
import 'dashbord_screen.dart';
import 'gamescreen.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'calculatorscreen',
      routes: {
        '/': (context) => const Dashboard(),
        'additionscreen': (context) => const MeroScreen(),
        'simpleinterestscreen': (context) => const MyHomeScreen(),
        'outputscreen': (context) => const OutputScreen(
              result: 0,
            ),
        'gamescreen': (context) => const NumberGeneratorScreenState(),
        'containerscreen': (context) => const ContainerScreen(),
        'containerflexiblescreen': (context) => const ContainerFlexibleScreen(),
        'gdvscreen': (context) => const Gdvscreen(),
        'calculatorscreen': (context) => const ClaculatorScreen(),
      },
    ),
  );
}
