import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MarksForm extends StatefulWidget {

  final String studentId;

  const MarksForm({
    super.key,
    required this.studentId,
  });

  @override
  State<MarksForm> createState() =>
      _MarksFormState();
}

class _MarksFormState
    extends State<MarksForm> {

  final courseController =
  TextEditingController();

  final marksController =
  TextEditingController();

  final gpaController =
  TextEditingController();

  final attendanceController =
  TextEditingController();

  final semesterController =
  TextEditingController();

  Future<void> saveResult() async {

    await FirebaseFirestore.instance
        .collection('results')
        .add({

      'studentId': widget.studentId,

      'courseCode':
      courseController.text,

      'marks':
      double.parse(
          marksController.text),

      'gpa':
      double.parse(
          gpaController.text),

      'attendance':
      int.parse(
          attendanceController.text),

      'semester':
      semesterController.text,
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(

      const SnackBar(
        content: Text(
          "Result Saved",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return ListView(

      children: [

        TextField(
          controller: courseController,

          decoration:
          const InputDecoration(
            hintText: 'Course Code',
          ),
        ),

        TextField(
          controller: marksController,

          decoration:
          const InputDecoration(
            hintText: 'Marks',
          ),
        ),

        TextField(
          controller: gpaController,

          decoration:
          const InputDecoration(
            hintText: 'GPA',
          ),
        ),

        TextField(
          controller:
          attendanceController,

          decoration:
          const InputDecoration(
            hintText: 'Attendance',
          ),
        ),

        TextField(
          controller:
          semesterController,

          decoration:
          const InputDecoration(
            hintText: 'Semester',
          ),
        ),

        const SizedBox(height: 20),

        ElevatedButton(
          onPressed: saveResult,

          child: const Text(
            "Save Result",
          ),
        ),
      ],
    );
  }
}