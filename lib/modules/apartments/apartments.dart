import 'package:flutter/material.dart';

class ApartmentsScreen extends StatefulWidget {
  const ApartmentsScreen({Key? key}) : super(key: key);

  @override
  State<ApartmentsScreen> createState() => _ApartmentsScreenState();
}

class _ApartmentsScreenState extends State<ApartmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apartments'),
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
