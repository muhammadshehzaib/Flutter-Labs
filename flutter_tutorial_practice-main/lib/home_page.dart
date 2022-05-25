import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(centerTitle: true, title: const Text("Catalog App")),
            body: Center(child: Text("Welcome to $days days of flutter"))));
  }
}
 