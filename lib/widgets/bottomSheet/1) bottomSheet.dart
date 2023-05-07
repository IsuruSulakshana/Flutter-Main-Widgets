import 'package:flutter/material.dart';
class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  bool _showBottomSheet = false;

  void _toggleBottomSheet() {
    setState(() {
      _showBottomSheet = !_showBottomSheet;
    });
  }

  void _removeBottomSheet() {
    setState(() {
      _showBottomSheet = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Bottom Sheet'),
          onPressed: _toggleBottomSheet,
        ),
      ),
      backgroundColor: Colors.black,
      bottomSheet: _showBottomSheet
          ? Container(
            color: Colors.black87,
              height: 500.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ListBottom(icon: Icons.facebook_outlined, text: "Facebook"),
                  const ListBottom(icon: Icons.whatsapp_outlined, text: "Whatsapp"),
                  const ListBottom(icon: Icons.email_outlined, text: "Email"),
                  const ListBottom(icon: Icons.bluetooth_outlined, text: "Bluetooth"),
                  const ListBottom(icon: Icons.message_outlined, text: "Message"),
                  const SizedBox(height: 10.0,),
                  ElevatedButton(
                    onPressed: _removeBottomSheet,
                    child: SizedBox(
                      width: 100.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('End'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}

class ListBottom extends StatefulWidget {
  final IconData icon;
  final String text;

  const ListBottom({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  State<ListBottom> createState() => _ListBottomState();
}

class _ListBottomState extends State<ListBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          widget.icon,
          size: 25.0,
          color: Colors.lightBlue,
        ),
        title: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        trailing: ElevatedButton(
          child: const Text('Add'),
          onPressed: (){}
        ),
      ),
    );
  }
}