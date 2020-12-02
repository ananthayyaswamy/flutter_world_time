import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  void initState() {
    super.initState();
    getData();
  }
  void getData() async{
    //simulate network request
    String username=  await Future.delayed(Duration(seconds: 3),(){
     return 'ananth';
    });
  String greeting=await  Future.delayed(Duration(seconds: 3),(){
      return 'hello gud eve';
    });
  print('$username-$greeting');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[900],
        title: Text('Choose location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose location screen'),
    );
  }
}
