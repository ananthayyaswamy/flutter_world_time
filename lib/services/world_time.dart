import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';



class WorldTime{
  String location;
  String time;
  String flag;
  String url;
  bool isdaytime;
 WorldTime({this.location,this.flag,this.time,this.url});
  Future<void> getTime() async{
    try{
      Response response= await get('https://worldtimeapi.org/api/timezone/$url');
      Map data=jsonDecode(response.body);
      //get properties from data
      String datetime=data['datetime'];
      String offset=data['utc_offset'].substring(1,3);

      // print(datetime);
      //  print(offset);
      //create a date time object
      DateTime now =DateTime.parse(datetime);
      now=now.add(Duration(hours:int.parse(offset) ));
      isdaytime=now.hour>6&&now.hour<20?true:false;
      time=DateFormat.jm().format(now);
    }
    catch(e){
     print('caught error:$e ');
     time='could not get time';
    }



  }
}


