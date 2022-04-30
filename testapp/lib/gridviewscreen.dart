import 'package:flutter/material.dart';

class Gdvscreen extends StatefulWidget {
  const Gdvscreen({Key? key}) : super(key: key);

  @override
  State<Gdvscreen> createState() => _GdvscreenState();
}

class _GdvscreenState extends State<Gdvscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View example"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            child: const Text("1"),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
          ),
          Container(
            color: Colors.green,
            child: const Text("2"),
            alignment: Alignment.center,
          ),
          Container(
            color: Color.fromARGB(255, 154, 116, 0),
            child: const Text("3"),
            alignment: Alignment.center,
          ),
          Container(
            color: Color.fromARGB(255, 139, 211, 141),
            child: const Text("4"),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.blue,
            child: const Text("5"),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.greenAccent,
            child: const Text("6"),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.amber,
            child: const Text("7"),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.green,
            child: const Text("8"),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
