import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int result;

  const OutputScreen({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Output"),
        ),
        body: Text("result: $result"));
  }
}
