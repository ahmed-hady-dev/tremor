import 'package:flutter/material.dart';

class DoctorDashboardView extends StatelessWidget {
  const DoctorDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('DoctorDashboard'),
        ),
      ),
    );
  }
}
