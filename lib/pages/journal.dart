import 'package:flutter/material.dart';
import 'global.dart' as global;

class journal extends StatelessWidget {
  journal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Journal',),
        backgroundColor: Color(0xff093648),
      ),
      body: Center(
        child: 
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[],
      ),
      ),

    );
  }
}