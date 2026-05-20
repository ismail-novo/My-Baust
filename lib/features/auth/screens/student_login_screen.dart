import 'package:flutter/material.dart';

import 'student_signup_screen.dart';

import '../../student/screens/student_dashboard.dart';

class StudentLoginScreen extends StatelessWidget {

  const StudentLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final idController = TextEditingController();

    return Scaffold(

      appBar: AppBar(
        title: const Text("Student Login"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: idController,

              decoration: const InputDecoration(
                hintText: 'Student ID',
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        StudentDashboard(
                          studentId: idController.text,
                        ),
                  ),
                );
              },

              child: const Text("Login"),
            ),

            TextButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                    const StudentSignupScreen(),
                  ),
                );
              },

              child: const Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}