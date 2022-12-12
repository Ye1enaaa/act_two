import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List mapData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electronic Log Book'),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return Dismissible(key: UniqueKey(), child: ListTile());
      })),
    );
  }
}