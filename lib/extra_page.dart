import 'package:flutter/material.dart';

class ExtraPage extends StatefulWidget {
  // const ExtraPage({Key? key}) : super(key: key);
  static final String id = 'extra_page';

  @override
  State<ExtraPage> createState() => _ExtraPageState();
}

class _ExtraPageState extends State<ExtraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Extra Page'),
      )
    );
  }
}
