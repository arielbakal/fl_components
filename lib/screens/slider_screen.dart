import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks')
      ),
      body: Column(
         children: [
          
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled ? ( value ) {
              _sliderValue = value;
              setState(() {
              });
            }
            : null
          ),

          
          // Checkbox, CheckboxListTile, Switch can be used
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: ( value ) => setState(() { _sliderEnabled = value; })
            // ALSO,
            // onChanged: ( value ) {
            //  _sliderEnabled = value;
            //  setState(() {});
            //}
          ),

          Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2017/04/04/14/26/pluto-2201446_960_720.png'), 
            fit: BoxFit.contain,
            width: _sliderValue,
          ),

         ],
      ),
    );
  }
}