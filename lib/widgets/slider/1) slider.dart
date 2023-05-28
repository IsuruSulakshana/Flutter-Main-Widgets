import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _value = 0.0;
  void _updateValue(double newValue) {
    setState(() {
      _value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Value: $_value',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),

            Slider(
              value: _value,
              min: 0.0,
              max: 100.0,
              divisions: 10,
              label: '$_value',
              onChanged: _updateValue,
            ),
          ],
        ),
      ),
    );
  }
}
