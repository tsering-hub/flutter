import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberGeneratorScreenState extends StatefulWidget {
  const NumberGeneratorScreenState({Key? key}) : super(key: key);

  @override
  State<NumberGeneratorScreenState> createState() =>
      _NumberGeneratorScreenStateState();
}

class _NumberGeneratorScreenStateState
    extends State<NumberGeneratorScreenState> {
  int? fisrtNumber, secondNumber;
  bool? submit = true;
  int count = 0;
  int correct = 0;
  int incorrect = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _generateRandomNumber();
  }

  _generateRandomNumber() {
    setState(() {
      fisrtNumber = Random().nextInt(100);
      secondNumber = Random().nextInt(100);
      if (fisrtNumber == secondNumber) {
        _generateRandomNumber();
      }
    });
  }

  _checkFirst() {
    setState(() {
      if (count < 9) {
        if (fisrtNumber! > secondNumber!) {
          correct++;
        } else {
          incorrect++;
        }
        count++;
      } else {
        submit = false;
      }
      _generateRandomNumber();
    });
  }

  _checkSecond() {
    setState(() {
      if (count < 9) {
        if (secondNumber! > fisrtNumber!) {
          correct++;
        } else {
          incorrect++;
        }
        count++;
      } else {
        submit = false;
      }
      _generateRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: submit! ? () => _checkFirst() : null,
                child: Text(fisrtNumber.toString())),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: submit! ? () => _checkSecond() : null,
                child: Text(secondNumber.toString())),
          ),
          const Divider(
            thickness: 2,
          ),
          // if (count > 9)
          //   Column(
          //     children: [
          //       const SizedBox(
          //         height: 8,
          //       ),
          //       const Text('Your Result'),
          //     ],
          //   )
        ],
      ),
    );
  }
}
