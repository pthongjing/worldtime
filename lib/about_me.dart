 import 'package:flutter/material.dart';


class AboutMe extends StatelessWidget {
  
    
   @override
  Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.blue[300],
           body: SafeArea(
           child: Card(
            margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
            elevation: 5.0,
            child: Padding(
            padding: const EdgeInsets.all(12.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                  Container(
                  height: 200,
                    child: Center(
                            child: CircleAvatar(
                                backgroundImage:   AssetImage('assets/mypic.jpg'),
                               radius: 80.0,
                              ),
                           ),
                  ),      
              SizedBox(height: 5.0,),
              Divider(
                           height:50.0,
                            color: Colors.grey[800],
                          ),
              Text(
                "Name - Surname:", textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                " Patikom Thongjing", textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                "Address:", textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                " Rambhai Barni Rajabhat University", textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue[900],
                ),
              ),
               SizedBox(height: 15.0),
              Container(
                child: Text(
                "Contact:",
                  style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
           
                   )
                 ),    
               ),
               
               SizedBox(height: 8.0),
               Row(
                   children: <Widget>[
                     Icon(Icons.email,
                      color: Colors.amber),
                SizedBox(width:10.0),                                
                     Text('email: patikom.t@rbru.ac.th', 
                     style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                           
                       ),
                                
                      ),

                      
                    ],

                            ),
            ],
          ),
   
        ),
      ),
 ),
   floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text('Back to Home'),
        icon: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue,
  
       
        
     
      ),
     
   );
  }
}