import 'package:flutter/material.dart';
import 'package:nature_app/my_component.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int number = 0; // initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // place appbar
        title: const Text('Home View'), // title of the appbar
        centerTitle: true, // center title
        backgroundColor: Colors.deepPurpleAccent, // color of the appbar
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number = number + 1;
          setState(() {}); // Update UI with updated values
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Stack(
          // arrange as stack
          alignment: Alignment.center, // stack alignment
          fit: StackFit.loose, // expand area
          children: [
            MyComponent(),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
