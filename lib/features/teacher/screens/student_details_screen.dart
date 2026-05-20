import 'package:flutter/material.dart';

import 'marks_input_screen.dart';

class StudentDetailsScreen extends StatelessWidget {

  final String studentId;

  const StudentDetailsScreen({
    super.key,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Student Details"),
      ),

      body: Center(

        child: ElevatedButton(
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    MarksInputScreen(
                      studentId: studentId,
                    ),
              ),
            );
          },

          child: const Text(
            "Input Marks",
          ),
        ),
      ),
    );
  }
}