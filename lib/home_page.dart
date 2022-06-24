import 'package:flutter/material.dart';
import 'new_page.dart';
import 'extra_page.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? name;
  int? age;

  Future _details() async{
    Map result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context){
        return NewPage(name: 'flutter', age: 22,);
      }
  ));

    if(result != null && result.containsKey('name') && result.containsKey('age')) {
      setState(() {
        name = result['name'];
        age = result['age'];
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('myDemo4 example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: (){
                // Navigator.pushNamed(context, NewPage.id);
                _details();
              },
              color: Colors.yellow,
              child: Text('Page 1'),
            ),
            if(name != null && age != null)
              Text('$name $age'),
          ],
        )
      )
    );
  }
}
