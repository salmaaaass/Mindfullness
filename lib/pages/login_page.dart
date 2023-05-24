import 'dart:math';

import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'two.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context)  {

    return Scaffold(
      // backgroundColor: Color.fromRGBO(174, 212, 235, 1),
      
      body: SafeArea(
        child: Center(
          child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffF6F6F6),
                Color(0xffD3D6DB),
              ],
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
                'Hello',
                style: TextStyle(
                  color: Color(0xff093648),
                  fontSize: 40,
                ),
                
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome, what should we call you?',
                style: TextStyle(
                  color: Color(0xff093648),
                  fontSize: 20,
                ),
                
              ),
              const SizedBox(height: 20),
SizedBox(width:300,height: 50,child:
              TextFormField(
                controller: usernameController,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your Name...',
                ),
                 style: TextStyle(
    fontSize: 20,)
              ),),
              const SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                if(usernameController.text==""){
                  showAlertDialog(context, "I'm Sorry", "But we need a name");
                }else{
                  global.global.name=usernameController.text;
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return two();
                }));}
              }, 
              
                style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff093648),
                minimumSize: Size(300, 50),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xff9EB9DB))
                ),
              
              child: Text("Enter"))
              

            ],
          ),
        ),
      ),
    ),
    );
  }
}
showAlertDialog(BuildContext context,String sTitle, String sBody) {  
   
  Widget okButton = ElevatedButton(  
    child: Text("OK",style: TextStyle(color: Color(0xffF6F6F6)),),  
    onPressed: () {  
      Navigator.of(context).pop();  
    },  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff212A3E)),
  ); 

  AlertDialog alert = AlertDialog(  
    title: Text(sTitle,style: TextStyle(color: Color(0xff212A3E)),),  
    content:  Text(sBody,style: TextStyle(color: Color(0xff212A3E)),), 
    actions: [  
      okButton  
    ],  
  );  
 
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}