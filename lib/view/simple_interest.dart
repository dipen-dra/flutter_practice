import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double principal = 0, rate = 0, time = 0, result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Principal'),
              keyboardType: TextInputType.number,
              onChanged: (value) => principal = double.tryParse(value) ?? 0,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Rate (%)'),
              keyboardType: TextInputType.number,
              onChanged: (value) => rate = double.tryParse(value) ?? 0,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Time (years)'),
              keyboardType: TextInputType.number,
              onChanged: (value) => time = double.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = (principal * rate * time) / 100;
                });
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text('Result: $result'),
          ],
        ),
      ),
    );
  }
}
