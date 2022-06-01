import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const ['Minecraft', 'Bioshock', 'Osu!', 'League of Legends'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              
              final game = options[i];
              print( game );

            },
          ),
          separatorBuilder: ( _ , __ ) => const Divider(),
        ));
  }
}
