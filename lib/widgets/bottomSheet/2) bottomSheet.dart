import 'package:flutter/material.dart';

class FullBottomSheet extends StatefulWidget {
  const FullBottomSheet({Key? key}) : super(key: key);

  @override
  _FullBottomSheetState createState() => _FullBottomSheetState();
}

class _FullBottomSheetState extends State<FullBottomSheet> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return BottomSheet(
          animationController: _animationController,
          backgroundColor: Colors.white,
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            side: BorderSide(color: Colors.grey, width: 1),
          ),
          clipBehavior: Clip.hardEdge,
          onClosing: () {},
          builder: (BuildContext context) {
            return Container(
              height: 200.0,
              child: const Center(
                child: Text('This is a FullBottomSheet'),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showBottomSheet,
          child: const Text('Show Full BottomSheet'),
        ),
      ),
    );
  }
}
