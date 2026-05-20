import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/student_tile.dart';

class StudentSearchScreen extends StatefulWidget {

  final String department;

  const StudentSearchScreen({
    super.key,
    required this.department,
  });

  @override
  State<StudentSearchScreen> createState() =>
      _StudentSearchScreenState();
}

class _StudentSearchScreenState
    extends State<StudentSearchScreen> {

  List students = [];

  Future<void> loadStudents() async {

    final snapshot = await FirebaseFirestore
        .instance
        .collection('students')
        .where(
      'department',
      isEqualTo: widget.department,
    )
        .get();

    setState(() {

      students = snapshot.docs;
    });
  }

  @override
  void initState() {
    super.initState();

    loadStudents();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Students"),
      ),

      body: ListView.builder(

        itemCount: students.length,

        itemBuilder: (context, index) {

          final student = students[index];

          return StudentTile(
            name: student['name'],
            id: student['studentId'],
          );
        },
      ),
    );
  }
}