import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
   
  const CustomCardType2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [

          const FadeInImage(
            image: NetworkImage('https://cdn.wallpapersafari.com/48/54/Z0wAcT.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300)
          ),

          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10),
            child: const Text('El infinito cosmos')
          )

        ],
      ),
    );
  }
}