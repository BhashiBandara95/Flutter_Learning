// Imports Flutter's material package, which provides pre-built widgets following Google's Material Design guidelines.
import 'package:flutter/material.dart';
import 'package:nature_app/home_view.dart';

// The entry point of the application.

void main() {
  //initial method(step)
  // Calls runApp() to launch the Flutter app and renders the MyApp widget as the root of the widget tree.
  runApp(const MyApp()); // Render the all UI part(runAPP())
}

class MyApp extends StatelessWidget {
  // MyApp - extends StatelessWidget, meaning it doesn't maintain state.
  const MyApp({super.key});
// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp: A widget that provides basic configuration for the app (e.g., theme, navigation)
      title: 'Flutter Demo',
      // title: The app's name
      theme: ThemeData(
        // theme: Defines the app's color and typography. Here, a seed color (Colors.deepPurple) is used to generate a color scheme.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
      // home: Specifies the initial screen of the app (MyHomePage).
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage: A StatefulWidget with a title property.
  // StatefulWidget: Allows the UI to change dynamically based on the app's state.
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  // createState(): Links the widget to its state management class (_MyHomePageState)
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // _counter: Tracks the number of button presses.

  void _incrementCounter() {
    // _incrementCounter(): Increments _counter and calls setState() to rebuild the widget tree with updated data.
    setState(() {
      // Notifies the framework that the state has changed, triggering a UI rebuild.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold: Provides a basic app layout structure.
      appBar: AppBar(
        // appBar: Displays the top bar with a title (widget.title) and uses the app's theme.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // body: The main content of the screen
        // Center: Centers its child vertically and horizontally.
        child: Column(
          // Column: Aligns its children vertically.
          // Displays the instruction text and the current counter value.
Displays the instruction text and the current counter value.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
         // floatingActionButton: A circular button that, when pressed, calls _incrementCounter().
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
