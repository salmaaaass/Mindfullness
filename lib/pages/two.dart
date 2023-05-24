import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'three.dart';

class two extends StatelessWidget {
  const two({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const twohi(),
    );
  }
}

class twohi extends StatefulWidget {
  const twohi({super.key});

  @override
  State<twohi> createState() =>
      _twohiState();
}

class _twohiState extends State<twohi> {
  bool cv1 = false;
  bool cv2 = false;
  bool cv3 = false;
  bool cv4 = false;
  bool cv5 = false;
  bool cv6 = false;
  bool cv7 = false;
  bool cv8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: AppBar(title: Text("\nHi "+global.global.name+" , What are your concerns?\n",style: TextStyle(
                  color: Color(0xff093648),
                ),),
                centerTitle: true,
        backgroundColor: Color(0xffF6F6F6),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            value: cv1,
            onChanged: (bool? value) {
              setState(() {
                cv1 = value!;
              });
            },
            title: const Text('Reduce Stress',
                style: TextStyle(
                  color: Color(0xff093648),
                ),
                ),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: cv2,
            onChanged: (bool? value) {
              setState(() {
                cv2 = value!;
              });
            },
            title: const Text('Pressure',style: TextStyle(
                  color: Color(0xff093648),
                ),),
            ),
          const Divider(height: 0),
          CheckboxListTile(
            value: cv3,
            onChanged: (bool? value) {
              setState(() {
                cv3 = value!;
              });
            },
            title: const Text('Sleep Better',style: TextStyle(
                  color: Color(0xff093648),
                ),),
            ),
          const Divider(height: 0),
          CheckboxListTile(
            value: cv4,
            onChanged: (bool? value) {
              setState(() {
                cv4 = value!;
              });
            },
            title: const Text('Health',style: TextStyle(
                  color: Color(0xff093648),
                ),),
          ),
          
          const Divider(height: 0),
          CheckboxListTile(
            value: cv5,
            onChanged: (bool? value) {
              setState(() {
                cv5 = value!;
              });
            },
            title: const Text('Enchance Productivity',style: TextStyle(
                  color: Color(0xff093648),
                ),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: cv6,
            onChanged: (bool? value) {
              setState(() {
                cv6 = value!;
              });
            },
            title: const Text('Become Happier',style: TextStyle(
                  color: Color(0xff093648),
                ),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: cv7,
            onChanged: (bool? value) {
              setState(() {
                cv7 = value!;
              });
            },
            title: const Text('Self Esteem',style: TextStyle(
                  color: Color(0xff093648),
                ),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: cv8,
            onChanged: (bool? value) {
              setState(() {
                cv8 = value!;
              });
            },
            title: const Text('Develop Gratitude',style: TextStyle(
                  color: Color(0xff093648),
                ),),
          ),
          const Divider(height: 0),
          
          const SizedBox(height: 20),

          ElevatedButton(onPressed: (){
                  
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return three();
                }));
              }, 
              
                style: ElevatedButton.styleFrom(
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
                ),
              
              child: Text("Done"))


        ],

      ),
    );
  }
}
