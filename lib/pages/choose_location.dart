import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations =[
     WorldTime(url: 'Europe/London', location: 'London', flag: 'Uk.png'),
     WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'France.png'),
     WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'Italy.png'),
     WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'Germany.png'),
     WorldTime(url: 'Asia/Shanghai', location: 'Shanghai', flag: 'China.png'),
     WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'Thailand.png'),
     WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'Japan.png'),
     WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'Korea.png'),
     WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'Indonesia.png'),
     WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'Srilanka.png'),
     WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'Australia.png'),
     WorldTime(url: 'America/New_York', location: 'New York', flag: 'Usa.png'),
     WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'Canada.png'),
     WorldTime(url: 'Africa/Bissau', location: 'ฺBissau', flag: 'SouthAfrica.png'),
     
  ];
   void updateTime(index) async {
    WorldTime instance  = locations[index];
       await  instance.getTime();
       
       // navigator to home screen
       Navigator.pop(context,{
          
          'location' : instance.location,
          'flag' : instance.flag,
          'time' : instance.time,
          'isDaytime': instance.isDaytime,
          
       },);
       
   } 
   
   void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
        
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Choose location'),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
           return Card(
             child: ListTile(
               onTap: () {
                updateTime(index);
               },
               title: Text(locations[index].location),
               leading: CircleAvatar(
               backgroundImage: AssetImage('assets/${locations[index].flag}'),
               ),
               
             ),
           );
        }
        
        ),
            
      );            
  }
}