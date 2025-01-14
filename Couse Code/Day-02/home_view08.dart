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
        // center widgets
        child: Column(
          // withour center the UI
          // Create row widget
          mainAxisAlignment: MainAxisAlignment.center, // main axis
          crossAxisAlignment: CrossAxisAlignment.center, // cross axis
          children: [
            MyComponent(),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepPurpleAccent,
            )
          ],
        ),
      ),
    );
  }
}
