// import 'package:flutter/material.dart';
// import 'package:group_button/group_button.dart';


// class MyHomePage extends StatelessWidget {

//   void _onButtonSelected(String text, int index, bool isSelected) {
//   print('$text at index $index is selected: $isSelected');
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GroupButton Example'),
//       ),
//       body: Center(
//         child: GroupButton(
//           isRadio: false,
//           onSelected: _onButtonSelected,
//           buttons: ["12:00", "13:00", "14:30", "18:00", "19:00", "21:40", "22:00", "23:30"],
//         ),
//       ),
//     );
//   }
// }


// class CheckBox extends StatefulWidget {
//   @override
//   _CheckBoxState createState() => _CheckBoxState();
// }

// class _CheckBoxState extends State<CheckBox> {
//   final _controller = GroupButtonController();
//   final List<String> _buttons = ["12:00", "13:00", "14:30", "18:00", "19:00", "21:40", "22:00", "23:30"];

//   void _onButtonSelected(String text, int index, bool isSelected) {
//     print('$text at index $index is selected: $isSelected');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GroupButton(
//       isRadio: false,
//       controller: _controller,
//       onSelected: _onButtonSelected,
//       buttons: _buttons,
//       buttonBuilder: (selected, i, context) => CheckBoxTile(
//         title: _buttons[ind],
//         selected: selected,
//         onTap: () => _controller.toggleIndexes([i]),
//       ),
//     );
//   }
// }

// class CheckBoxTile extends StatelessWidget {
//   final String title;
//   final bool selected;
//   final VoidCallback onTap;

//   const CheckBoxTile({
//     Key? key,
//     required this.title,
//     required this.selected,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Checkbox(
//         value: selected,
//         onChanged: (value) => onTap(),
//       ),
//       title: Text(title),
//     );
//   }
// }
