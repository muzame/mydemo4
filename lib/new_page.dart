import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  // const NewPage({Key? key}) : super(key: key);
  static final String id = 'new_page';

  final String? name;
  final int? age;
  NewPage({this.name, this.age});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Name: ${widget.name}\n Age: ${widget.age}"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop({'name': 'dart', 'age': 33});
              },
              child: Text('Button Back'),
              color: Colors.green,
            )
          ],)
        );

  }
}
