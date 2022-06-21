import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox( height: 10),
          CustomCardType2(name: 'Nebulose', imageUrl: 'https://wallpaperaccess.com/full/235201.jpg'),
          SizedBox( height: 10),
          CustomCardType2(name: 'Galaxy', imageUrl: 'https://wallpaperaccess.com/full/511885.jpg'),
          SizedBox( height: 10),
          CustomCardType2(imageUrl: 'https://wallpaperaccess.com/full/655217.jpg'),
          SizedBox( height: 10),
          CustomCardType2(name: 'From space sunset',imageUrl: 'https://wallpaperaccess.com/full/316418.jpg'),
          SizedBox( height: 10),
          CustomCardType2(imageUrl: 'https://wallpaperaccess.com/full/4973342.jpg'),
          SizedBox( height: 10),
          CustomCardType2(imageUrl: 'https://wallpaperaccess.com/full/7036765.jpg'),
          

        ],
      ),
    );
  }
}

