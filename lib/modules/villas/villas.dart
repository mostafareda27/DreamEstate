import 'package:flutter/material.dart';

class VillasScreen extends StatelessWidget {
  const VillasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text('Villas'),
      ),
      body: Container(
        color: Colors.deepPurple,
      ),
    );
  }
}
