import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VishwasPay',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        // Add more routes here
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VishwasPay Home'),
      ),
      body: Center(
        child: Text('Welcome to VishwasPay!'),
      ),
    );
  }
}