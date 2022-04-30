import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClaculatorScreen extends StatefulWidget {
  const ClaculatorScreen({Key? key}) : super(key: key);

  @override
  State<ClaculatorScreen> createState() => _ClaculatorScreenState();
}

class _ClaculatorScreenState extends State<ClaculatorScreen> {
  // firstinputnumber
  double? firstinputnumber;
  // secondinput number
  double? secondinputnumber;

  // operator;
  String? operator;

  // button colors
  Color numberbuttoncolor = const Color.fromARGB(255, 222, 222, 222);
  Color buttonforegroundcolor = const Color.fromARGB(255, 0, 0, 0);
  Color operatorbuttoncolor = const Color.fromARGB(255, 108, 207, 225);

// text field controller
  TextEditingController myController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  _numberbuttonpressed(String text) {
    setState(() {
      myController.text = myController.text + text;
    });
  }

  _operationbuttonpressed(String text) {
    if (myController.text != "") {
      try {
        if (text == '+' || text == '-' || text == '*' || text == '/') {
          setState(() {
            firstinputnumber = double.parse(myController.text);
            myController.clear();
            operator = text;
          });
        }
      } catch (e) {
        setState(() {
          myController.text = 'Error';
        });
      }
    } else {
      print("empty");
    }
  }

  _resultbuttonpressed() {
    setState(() {
      try {
        if (operator == '+') {
          secondinputnumber = double.parse(myController.text);
          myController.text =
              (firstinputnumber! + secondinputnumber!).toString();
        } else if (operator == '-') {
          secondinputnumber = double.parse(myController.text);
          myController.text =
              (firstinputnumber! - secondinputnumber!).toString();
        } else if (operator == '*') {
          secondinputnumber = double.parse(myController.text);
          myController.text =
              (firstinputnumber! * secondinputnumber!).toString();
        } else if (operator == '/') {
          secondinputnumber = double.parse(myController.text);
          myController.text =
              (firstinputnumber! / secondinputnumber!).toString();
        }
      } catch (e) {
        myController.text = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: myController,
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: GridView.count(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      myController.clear();
                    },
                    child: const Text("C"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("%"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(operatorbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _operationbuttonpressed('/');
                    },
                    child: const Text("/"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(operatorbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myController.text = myController.text
                            .substring(0, myController.text.length - 1);
                      });
                    },
                    child: const Text("<="),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('1');
                    },
                    child: const Text("1"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _numberbuttonpressed('2');
                      });
                    },
                    child: const Text("2"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('3');
                    },
                    child: const Text("3"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _operationbuttonpressed('+');
                    },
                    child: const Text("+"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(operatorbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('4');
                    },
                    child: const Text("4"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('5');
                    },
                    child: const Text("5"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('6');
                    },
                    child: const Text("6"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _operationbuttonpressed('-');
                    },
                    child: const Text("-"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(operatorbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('7');
                    },
                    child: const Text("7"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('8');
                    },
                    child: const Text("8"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('9');
                    },
                    child: const Text("9"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _operationbuttonpressed('*');
                    },
                    child: const Text("*"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(operatorbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("%"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(operatorbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('0');
                    },
                    child: const Text("0"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _numberbuttonpressed('.');
                    },
                    child: const Text("."),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(numberbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _resultbuttonpressed();
                    },
                    child: const Text("="),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(operatorbuttoncolor),
                      foregroundColor:
                          MaterialStateProperty.all(buttonforegroundcolor),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
