import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'dart:async';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

//  String time = 'loading';
   Future<Timer> loadData() async {
    return  Timer(Duration(seconds: 10), setupWorldTime);
  }
  
  void setupWorldTime() async {
     WorldTime object = WorldTime(location: 'Bangkok',flag: 'Thailand.png',url: 'Asia/Bangkok');
     await object.getTime();
     Navigator.pushReplacementNamed(context, '/home', arguments:{
         'location' : object.location,
         'flag'     : object.flag,
         'time'     : object.time,
         'isDaytime': object.isDaytime,
     } );
  

  }
   
  @override
   void initState() {
        super.initState();
        setupWorldTime();
   }

  

  Widget build(BuildContext context) {
    return    Scaffold(     
         
        body: Center( 
          
        //  child : FlutterLogo(
          
        //    size: 4000,
        //  ),
          child: Container(
          height: 200,
          width: 200,
            decoration: BoxDecoration(
            
             image: DecorationImage(
             image: AssetImage('assets/CSIT.png'),
            fit: BoxFit.cover,
              
             ),

  //        ) ,
    //    ),
      
   //      ),
        //  );
    ),
    //),

        child: Center(
          
           child: CircularProgressIndicator(
             valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
             backgroundColor: Colors.blue,
           ),

        ),
          ),
    ),
    );

  }
}