import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data={};
  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    print(data);
    String bgimage=data['isdaytime']?'sunrise.jpg':'night1.jpg';
    Color bgcolor=data['isdaytime']?Colors.black:Colors.blue[900];
    Color colors=data['isdaytime']?Colors.black:Colors.white;
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgimage'),
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
             padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
              child:Column(

                children: [

                  FlatButton.icon(

                    onPressed: (){Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                        Icons.edit_location,
                            color:Colors.white
                    ),
                    label: Text(
                        'edit location',
                            style:TextStyle(
                              color: Colors.white
                            )

                    ),

                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                          color: colors
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 66.0,
                        color: colors
                    ),
                  )
                ],

              )
          ),
        ),
      ),
    );
  }
}
