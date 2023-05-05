import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';


class MyHomePage extends StatelessWidget {

  void _onButtonSelected(String text, int index, bool isSelected) {
  print('$text at index $index is selected: $isSelected');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GroupButton Example'),
      ),
      body: Center(
        child: GroupButton(
          isRadio: false,
          onSelected: _onButtonSelected,
          buttons: ["12:00", "13:00", "14:30", "18:00", "19:00", "21:40", "22:00", "23:30"],
        ),
      ),
    );
  }
}

