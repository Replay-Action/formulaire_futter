import 'package:flutter/material.dart';
import 'package:formulaire_flutter/Guest.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leadee',
      home: GuestScreen(),
    );
  }
}// This trailing comma makes auto-formatting nicer for build methods.