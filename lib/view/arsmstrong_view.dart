import 'package:flutter/material.dart';

class ArmstrongView extends StatefulWidget {
  const ArmstrongView({super.key});

  @override
  State<ArmstrongView> createState() => _ArmstrongViewState();
}

class _ArmstrongViewState extends State<ArmstrongView> {
  String input = '';
  String result = '';

  bool isArmstrong(int number) {
    int sum = 0, temp = number;
    int digits = number.toString().length;
    while (temp > 0) {
      int digit = temp % 10;
      sum += digit * digit * digit;
      temp ~/= 10;
    }
    return sum == number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Armstrong Checker")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Enter a number'),
              keyboardType: TextInputType.number,
              onChanged: (value) => input = value,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int? num = int.tryParse(input);
                if (num == null) {
                  setState(() => result = 'Invalid number');
                  return;
                }
                setState(() {
                  result = isArmstrong(num)
                      ? 'Armstrong Number!'
                      : 'Not an Armstrong Number.';
                });
              },
              child: const Text('Check'),
            ),
            const SizedBox(height: 20),
            Text(result),
          ],
        ),
      ),
    );
  }
}
