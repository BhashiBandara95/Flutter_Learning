import 'package:flutter/material.dart';

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
        title: Text('Home View'), // title of the appbar
        centerTitle: true, // center title
        backgroundColor: Colors.deepPurpleAccent, // color of the appbar
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number = number + 1;
          setState(() {}); // Update UI with updated values
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
      ),
      body: Container(
        child: Center(child: Text(number.toString())), // Wrap with center
      ),
    );
  }
}
