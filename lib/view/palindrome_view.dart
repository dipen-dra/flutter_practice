import 'package:flutter/material.dart';

class PalindromeView extends StatefulWidget {
  const PalindromeView({super.key});

  @override
  State<PalindromeView> createState() => _PalindromeViewState();
}

class _PalindromeViewState extends State<PalindromeView> {
  String input = '';
  String result = '';

  bool isPalindrome(String text) {
    String reversed = text.split('').reversed.join();
    return text == reversed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Palindrome Checker")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Enter text or number'),
              onChanged: (value) => input = value,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = isPalindrome(input) ? "It's a Palindrome!" : "Not a Palindrome.";
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
