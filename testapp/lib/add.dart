import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeroScreen extends StatefulWidget {
  const MeroScreen({Key? key}) : super(key: key);

  @override
  State<MeroScreen> createState() => _MeroScreenState();
}

class _MeroScreenState extends State<MeroScreen> {
  // int? first, second;
  final _globalKey = GlobalKey<FormState>();
  final first_controller = TextEditingController();
  final second_controller = TextEditingController();

  String? group = "myGroup";
  int result = 0;

  _calculate() {
    if (group == 'add') {
      setState(() {
        result = int.parse(first_controller.text) +
            int.parse(second_controller.text);
      });
    } else if (group == 'subtract') {
      setState(() {
        result = int.parse(first_controller.text) -
            int.parse(second_controller.text);
      });
    } else if (group == 'multiply') {
      setState(() {
        result = int.parse(first_controller.text) *
            int.parse(second_controller.text);
      });
    } else if (group == 'division') {
      setState(() {
        result = int.parse(first_controller.text) ~/
            int.parse(second_controller.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arthmetic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              TextFormField(
                // onChanged: (value) {
                //   first = int.tryParse(value);
                // },
                controller: first_controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "First Number",
                  hintText: "Enter First Number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                // onChanged: (value) {
                //   second = int.tryParse(value);
                // },
                controller: second_controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Second Number",
                  hintText: "Enter Second Number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                title: const Text("Add"),
                leading: Radio(
                    value: 'add',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    }),
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                title: const Text("Subtract"),
                leading: Radio(
                    value: 'subtract',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    }),
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                title: const Text("Multiply"),
                leading: Radio(
                    value: 'multiply',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    }),
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                title: const Text("Division"),
                leading: Radio(
                    value: 'division',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    }),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        _calculate();
                      }
                    },
                    child: const Text("Calculate")),
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Result: $result")
            ],
          ),
        ),
      ),
    );
  }
}
