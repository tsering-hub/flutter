import 'package:flutter/material.dart';

class ContainerFlexibleScreen extends StatefulWidget {
  const ContainerFlexibleScreen({Key? key}) : super(key: key);

  @override
  State<ContainerFlexibleScreen> createState() =>
      _ContainerFlexibleScreenState();
}

class _ContainerFlexibleScreenState extends State<ContainerFlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 500,
              width: double.infinity,
              color: Colors.amber,
              child: const Text("1"),
            ),
          ),
          Expanded(
            child: Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              child: const Text("2"),
            ),
          ),
        ],
      ),
    );
  }
}
