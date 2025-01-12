import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
