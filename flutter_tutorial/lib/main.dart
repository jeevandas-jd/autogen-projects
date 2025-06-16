import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Layout Example'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.red,
            child: Center(
                child: Text('Container 1',
                    style: TextStyle(color: Colors.white, fontSize: 20))),
          ),
          SizedBox(height: 20),
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
                child: Text('Container 2',
                    style: TextStyle(color: Colors.white, fontSize: 20))),
          ),
        ],
      ),
    );
  }
}
