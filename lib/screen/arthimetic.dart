import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  @override
  _ArithmeticState createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(labelText: 'First Number'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(labelText: 'Second Number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.tryParse(num1Controller.text) ?? 0.0;
                      double num2 = double.tryParse(num2Controller.text) ?? 0.0;
                      double sum = num1 + num2;
                      result = "Sum: ${sum.toStringAsFixed(2)}";
                    });
                  },
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.tryParse(num1Controller.text) ?? 0.0;
                      double num2 = double.tryParse(num2Controller.text) ?? 0.0;
                      double diff = num1 - num2;
                      result = "Difference: ${diff.toStringAsFixed(2)}";
                    });
                  },
                  child: const Text('Subtract'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.tryParse(num1Controller.text) ?? 0.0;
                      double num2 = double.tryParse(num2Controller.text) ?? 0.0;
                      double prod = num1 * num2;
                      result = "Product: ${prod.toStringAsFixed(2)}";
                    });
                  },
                  child: const Text('Multiply'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.tryParse(num1Controller.text) ?? 0.0;
                      double num2 = double.tryParse(num2Controller.text) ?? 1.0;
                      if (num2 == 0.0) {
                        result = "Division by zero is not allowed";
                      } else {
                        double div = num1 / num2;
                        result = "Division: ${div.toStringAsFixed(2)}";
                      }
                    });
                  },
                  child: const Text('Divide'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
