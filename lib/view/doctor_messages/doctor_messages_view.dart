import 'package:flutter/material.dart';

class DoctorMessagesView extends StatelessWidget {
  const DoctorMessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('DoctorMessages'),
        ),
      ),
    );
  }
}
