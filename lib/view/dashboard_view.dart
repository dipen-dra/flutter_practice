import 'package:flutter/material.dart';
import 'package:flutter_cls_practice/view/area_of_circle.dart';
import 'package:flutter_cls_practice/view/arsmstrong_view.dart';
import 'package:flutter_cls_practice/view/palindrome_view.dart';
import 'package:flutter_cls_practice/view/simple_interest.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SimpleInterestView()),
              ),
              child: const Text('Simple Interest'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AreaCircleView()),
              ),
              child: const Text('Area of Circle'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PalindromeView()),
              ),
              child: const Text('Palindrome'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ArmstrongView()),
              ),
              child: const Text('Armstrong'),
            ),
          ],
        ),
      ),
    );
  }
}
