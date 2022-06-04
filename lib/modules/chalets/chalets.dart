import 'package:flutter/material.dart';

class ChaletsScreen extends StatelessWidget {
  const ChaletsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chalets'),
      ),
      body: Container(
        color: Colors.lime,
      ),
    );
  }
}
