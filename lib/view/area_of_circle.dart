import 'package:flutter/material.dart';
import 'dart:math';

class AreaCircleView extends StatefulWidget {
  const AreaCircleView({super.key});

  @override
  State<AreaCircleView> createState() => _AreaCircleViewState();
}

class _AreaCircleViewState extends State<AreaCircleView> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Area of Circle")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Enter radius'),
              keyboardType: TextInputType.number,
              onChanged: (value) => radius = double.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  area = pi * radius * radius;
                });
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text('Area: $area'),
          ],
        ),
      ),
    );
  }
}
