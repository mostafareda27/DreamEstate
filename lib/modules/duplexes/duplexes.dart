import 'package:flutter/material.dart';

class DuplexScreen extends StatelessWidget {
  const DuplexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Duplexes'),
      ),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}
