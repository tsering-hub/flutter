import 'package:flutter/material.dart';

import 'add.dart';
import 'arithmetic.dart';
import 'dashbord_screen.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'additionscreen',
      routes: {
        '/': (context) => const Dashboard(),
        'additionscreen': (context) => const MeroScreen(),
        'simpleinterestscreen': (context) => const MyHomeScreen(),
      },
    ),
  );
}
