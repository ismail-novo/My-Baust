import 'package:flutter/material.dart';

import 'student_login_screen.dart';
import 'teacher_login_screen.dart';

class RoleSelectionScreen extends StatelessWidget {

  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("My Campus"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                      const StudentLoginScreen(),
                    ),
                  );
                },

                child: const Text("Student"),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                      const TeacherLoginScreen(),
                    ),
                  );
                },

                child: const Text("Teacher"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}