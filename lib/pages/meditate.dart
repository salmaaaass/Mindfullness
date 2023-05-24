import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'podcast.dart';
import 'music.dart';
import 'guide.dart';

class meditate extends StatelessWidget {
  meditate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      // appBar: AppBar(
      //   title: const Text('Meditate',),
      //   backgroundColor:Color(0xffF6F6F6),
      // ),
      body: Center(
        child: 
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text("What do you want to listen to? ",style: TextStyle(color: Color(0xff093648),fontSize: 30,fontWeight: FontWeight.bold),),
SizedBox(height: 20),
              ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return podcast();
                }));

              },  style: ElevatedButton.styleFrom(
                  shape:
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xff093648),
                  minimumSize: Size(300, 50),
                  padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      const TextStyle(color: Color(0xffB1E8E4),
                              fontSize: 20, 
                              fontWeight: FontWeight.bold),
                ),child: Text("Podcast",style: TextStyle(color: Color(0xffF6F6F6),fontSize: 30,fontWeight: FontWeight.bold),)),
              
              SizedBox(height: 20),
              
              ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return music();
                }));
              },  style: ElevatedButton.styleFrom(
                  shape:
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xff093648),
                  minimumSize: Size(300, 50),
                  padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      const TextStyle(color: Color(0xffB1E8E4),
                              fontSize: 20, 
                              fontWeight: FontWeight.bold),
                ),child: Text("Music",style: TextStyle(color: Color(0xffF6F6F6),fontSize: 30,fontWeight: FontWeight.bold),)),

              SizedBox(height: 20),
              
              ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return guide();
                }));
              },  style: ElevatedButton.styleFrom(
                  shape:
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xff093648),
                  minimumSize: Size(300, 50),
                  padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      const TextStyle(color: Color(0xffB1E8E4),
                              fontSize: 20, 
                              fontWeight: FontWeight.bold),
                ),child: Text("Guide",style: TextStyle(color: Color(0xffF6F6F6),fontSize: 30,fontWeight: FontWeight.bold),)),

            ],
      ),
      ),

    );
  }
}