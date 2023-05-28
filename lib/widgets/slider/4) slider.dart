import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 0.0;

  void _updateValue(double newValue) {
    setState(() {
      _value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color? getColorFromValue(double value){
      return Color.lerp(Color(0xFF0072ff), Color.fromARGB(255, 228, 9, 221), value);
    }
    return Slider(
              value: _value,
              min: 0.0,
              max: 1.0,
              divisions: 100,
              label: '$_value',
              onChanged: _updateValue,
              activeColor: getColorFromValue(_value),
              inactiveColor: Colors.cyan,
            );
  }
}