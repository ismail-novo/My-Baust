import 'package:flutter/material.dart';

import 'student_search_screen.dart';

class TeacherDashboard extends StatelessWidget {

  final String department;

  const TeacherDashboard({
    super.key,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Teacher Dashboard"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Text(
              "Department: $department",

              style: const TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                    StudentSearchScreen(
                      department: department,
                    ),
                  ),
                );
              },

              child: const Text(
                "Search Students",
              ),
            ),
          ],
        ),
      ),
    );
  }
}