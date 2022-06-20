import 'package:fl_components/main.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_camera_back, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Dolore amet est. Elit deserunt commodo irure Lorem excepteur fugiat elit voluptate culpa duis anim exercitation aliqua excepteur.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}