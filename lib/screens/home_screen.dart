import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Components'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_alarm_outlined),
          title: const Text('Route name'),
          onTap: () {

            //final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            //Navigator.push(context, route);

            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: ( _ , __ ) => const Divider(),
        itemCount: 100
      )
    );
  }
}