import 'package:flutter/material.dart';
import 'package:local_storage/models.dart';

class FormPage extends StatefulWidget {
  const FormPage({ Key? key }) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String? nameData;
  String? timeData;
  TextEditingController nameVal = TextEditingController();
  ProfileModel profileModel = ProfileModel();
  void setValues(){
    final nameValue = nameVal.text;
    setState(() {
      nameData = nameValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: ListView(
        children: [
          TextFormField(
            controller: nameVal,
            decoration: InputDecoration(
              labelText: "Name"
            )
          ),
          SizedBox(height: 50,
          child: ElevatedButton(onPressed: (){

          }, child: Text('SUBMIT')),
          )
        ],
      ),
    );
  }
}