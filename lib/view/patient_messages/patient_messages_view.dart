import 'package:flutter/material.dart';

class PatientMessagesView extends StatelessWidget {
  const PatientMessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('PatientMessagesView'),
        ),
      ),
    );
  }
}
