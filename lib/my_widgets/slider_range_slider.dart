import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {

double value = 50;
final   double min =20;
final  double max = 80;
  final division = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: SliderTheme(
        data: const SliderThemeData(
          trackHeight: 10,
          thumbColor: Colors.amber,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
          activeTrackColor: Color.fromARGB(255, 8, 235, 110),
          inactiveTrackColor: Colors.black,
          //overlayColor: Colors.green.shade200,
          valueIndicatorColor: Colors.green,//background of the value color

          //tick color
          activeTickMarkColor: Colors.transparent,
          inactiveTickMarkColor: Colors.transparent
        ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  
                  children: [
                   
                    Expanded(
                      child: Slider(value: value,
                      min: 0,
                      max: 100,
                      divisions: 20,
                      // activeColor: Colors.red,
                      // inactiveColor: Colors.red.shade100,
                      label: value.round().toString(),
                       onChanged: (value) => setState(()=>this.value =value)),
                    ),
                  ],
                ),
              ),
         
               SizedBox(
                height: 16,
                 child: Slider(value: value,
                               min: 0,
                               max: 100,
                               divisions: 20,
                               activeColor: Colors.white,
                               secondaryActiveColor: Colors.amber,
                               inactiveColor: Colors.grey.shade100,
                               label: value.round().toString(),
                 onChanged: (value) => setState(()=>this.value =value)),
               )
            ],
          ),
       ),
     ),
    );
  }
}

class RangeSliderEg extends StatefulWidget {
  
  const RangeSliderEg({super.key,

 
  });

  @override
  State<RangeSliderEg> createState() => _RangeSliderEgState();
}

class _RangeSliderEgState extends State<RangeSliderEg> {
  
   double startValue =90;
   double endValue = 200;
 
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
                  labels: RangeLabels('$startValue', '$endValue'),
                  activeColor: const Color.fromARGB(255, 5, 13, 231),
                  inactiveColor:  Colors.blue.withOpacity(0.3),
                   min: 0.0,
                  max: 300.0,
                  values:RangeValues( startValue, endValue),
                  onChanged: (values){
                  setState(() {
                  startValue = values.start;
                  endValue = values.end;
                   });
                   }, 
                  );
     
  }
}