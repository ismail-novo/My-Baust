import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/cgpa_chart.dart';

class StudentDashboard extends StatelessWidget {

  final String studentId;

  const StudentDashboard({
    super.key,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Student Dashboard"),
      ),

      body: FutureBuilder(

        future: FirebaseFirestore.instance
            .collection('students')
            .doc(studentId)
            .get(),

        builder: (context, snapshot) {

          if (!snapshot.hasData) {

            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final student = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(20),

            child: Column(

              children: [

                Text(
                  student['name'],
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(student['department']),

                const SizedBox(height: 30),

                CGPAChart(
                  cgpa: student['cgpa'].toDouble(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}