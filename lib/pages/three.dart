import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'meditate.dart';
import 'journal.dart';

class three extends StatelessWidget {
  three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Choose any one ',
                style: TextStyle(
                  color: Color(0xff093648),
                  fontSize: 30,
                ),
                
              ),
              backgroundColor: Color(0xffF6F6F6),
              ),
      backgroundColor: Color(0xffF6F6F6),
      body: Center(
        child: 
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              

              IconButton(
                focusColor:Color(0xff986A78),
                color: Color(0xff093648),
          icon: const Icon(Icons.person,size: 100,),
          tooltip: 'Come, let us meditate',
          onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return meditate();
                }));
          },
        ),
        // Text('Meditate',style: TextStyle(
        //           color: Color(0xff093648),
        //           fontSize: 30,
        //         ),),

        IconButton(
          focusColor:Color(0xff986A78),
          color: Color(0xff093648),
          icon: const Icon(Icons.book,size: 100,),
          tooltip: 'Do you want to write down those feelings?',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return journal();
                }));
          },
        ),
        // Text('Journal',style: TextStyle(
        //           color: Color(0xff093648),
        //           fontSize: 30,
        //         ),
        //         ),
            ],
      ),
      
      ),

    );
  }
}