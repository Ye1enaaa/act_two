import 'package:flutter/material.dart';
import 'package:local_storage/models.dart';

void main() {
  runApp(MaterialApp(
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  String? nameGetter;
  TextEditingController nameVal = TextEditingController();
  ProfileModel profileModel = ProfileModel();
  void nameSet(){
    var nameMe = nameVal.text;
    setState(() {
      nameGetter = nameMe;
    });
  }
  @override
  Widget build(BuildContext context) {
    final nameWidget = nameGetter;
    return Scaffold(
      appBar: AppBar(
        title: Text('$nameWidget')),
      body: Form(child: ListView(
        children: [
          TextFormField(
            controller: nameVal,
            decoration: InputDecoration(
              labelText: 'Name'
            ),
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(onPressed: (){
              nameSet();
            }, child: Text('SUBMIT')),
          )
        ],
      )),
    );
  }
}


