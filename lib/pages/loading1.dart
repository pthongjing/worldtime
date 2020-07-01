import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

 // String time = 'loading';
  
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
    return Scaffold(
      
       body: Center(
         child:   SpinKitFadingCircle(
         itemBuilder: (BuildContext context, int index) {
         return DecoratedBox(
         decoration: BoxDecoration(
         color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
), // SpinKitFadingCircle


       ),
    );
  }
}