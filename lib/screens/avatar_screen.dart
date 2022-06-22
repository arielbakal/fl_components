import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 10 ),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Color.fromARGB(255, 26, 35, 126),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 50,
          backgroundImage: NetworkImage('https://bichocritico.files.wordpress.com/2013/03/images2.jpg'),
         ),
      ),
    );
  }
}