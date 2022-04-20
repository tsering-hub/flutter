import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'simpleinterestscreen');
              },
              child: const Text("Simple Interest")),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'additionscreen');
              },
              child: const Text("Addition")),
        ],
      ),
    );
  }
}
