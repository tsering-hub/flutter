import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: const Text("I am Container"),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
