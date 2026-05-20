import 'package:flutter/material.dart';

class StudentInfoCard extends StatelessWidget {

  final String name;
  final String id;
  final String department;
  final String batch;

  const StudentInfoCard({
    super.key,
    required this.name,
    required this.id,
    required this.department,
    required this.batch,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Text(
              name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text("ID: $id"),

            Text("Department: $department"),

            Text("Batch: $batch"),
          ],
        ),
      ),
    );
  }
}