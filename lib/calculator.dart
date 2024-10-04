import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int? firstOperand;
  String? operator;
  int? secondOperand;
  dynamic result;

  void numberTapped(int tappedNumber) {
    setState(() {
      firstOperand = tappedNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "$firstOperand",
              style: const TextStyle(color: Colors.white),
            )),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(7);
                  },
                  child: const Text("7"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(8);
                  },
                  child: const Text("8"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(9);
                  },
                  child: const Text("9"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("÷"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(4);
                  },
                  child: const Text("4"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(5);
                  },
                  child: const Text("5"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(6);
                  },
                  child: const Text("6"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("X"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(1);
                  },
                  child: const Text("1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(2);
                  },
                  child: const Text("2"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(3);
                  },
                  child: const Text("3"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("-"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("C"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(0);
                  },
                  child: const Text("0"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("="),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("+"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
