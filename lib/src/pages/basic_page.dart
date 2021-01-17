import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  static final String route = '/basic';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Basic Page'),
      ),
    );
  }
}
