import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'login_page.dart';

class Loding extends StatelessWidget {
  Loding({super.key});

  

  @override
  Widget build(BuildContext context)  {

    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: (
        Center(
          child: 
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Image.asset('assets/image/yoga1.png',
              width: 100,height: 100,),
              const SizedBox(height: 20),
              Text("Mindfullness...",style: TextStyle(color: Color(0xff093648),fontSize: 20),),
const SizedBox(height: 20),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return LoginPage();
                }));

                

              }, style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff093648),
                minimumSize: Size(300, 50),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xff9EB9DB))
                ),
                child: Text("Let's Begin"))
            ],
      ),
        )
      ),
      
    );
  }
}
