import 'package:flutter/material.dart';
import 'package:flutter_world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupworldtime() async{
    WorldTime instance=WorldTime(location: 'berlin',flag: 'germany.png',url: 'Europe/Berlin');
   await instance.getTime();
   Navigator.pushReplacementNamed(context,'/home',arguments: {'location':instance.location,'flag':instance.flag,
   'time':instance.time,
   } );

  }
  @override
  void initState() {
    super.initState();
    setupworldtime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
       child:  Text('loading'),
      )
    );
  }
}
