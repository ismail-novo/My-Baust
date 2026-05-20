import 'package:flutter/material.dart';

import '../widgets/marks_form.dart';

class MarksInputScreen extends StatelessWidget {

  final String studentId;

  const MarksInputScreen({
    super.key,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Input Marks"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: MarksForm(
          studentId: studentId,
        ),
      ),
    );
  }
}