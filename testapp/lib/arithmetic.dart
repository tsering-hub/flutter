import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int? principal, interest, time;

  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                principal = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Principal",
                  hintText: "Enter Principal Amount",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                interest = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Interest Rate",
                  hintText: "Enter Interest Rate",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                time = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Time",
                  hintText: "Enter Time",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = (principal! * interest! * time!) ~/ 100;
                    });
                  },
                  child: const Text("Simple Interest")),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Simple Interest: $result")
          ],
        ),
      ),
    );
  }
}
