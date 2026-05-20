import 'package:flutter/material.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_textfield.dart';

import '../../../../core/services/database_service.dart';

class StudentSignupScreen extends StatefulWidget {

  const StudentSignupScreen({super.key});

  @override
  State<StudentSignupScreen> createState() =>
      _StudentSignupScreenState();
}

class _StudentSignupScreenState
    extends State<StudentSignupScreen> {

  final nameController = TextEditingController();
  final idController = TextEditingController();
  final deptController = TextEditingController();
  final levelController = TextEditingController();
  final termController = TextEditingController();
  final sectionController = TextEditingController();
  final batchController = TextEditingController();

  final db = DatabaseService();

  Future<void> signup() async {

    await db.addStudent(
      id: idController.text,

      data: {

        'name': nameController.text,
        'studentId': idController.text,
        'department': deptController.text,
        'level': levelController.text,
        'term': termController.text,
        'section': sectionController.text,
        'batch': batchController.text,
        'cgpa': 0.0,
      },
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Student Registered"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Student Signup"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView(

          children: [

            CustomTextField(
              hint: 'Student Name',
              controller: nameController,
            ),

            CustomTextField(
              hint: 'Student ID',
              controller: idController,
            ),

            CustomTextField(
              hint: 'Department',
              controller: deptController,
            ),

            CustomTextField(
              hint: 'Level',
              controller: levelController,
            ),

            CustomTextField(
              hint: 'Term',
              controller: termController,
            ),

            CustomTextField(
              hint: 'Section',
              controller: sectionController,
            ),

            CustomTextField(
              hint: 'Batch',
              controller: batchController,
            ),

            CustomButton(
              text: 'Signup',
              onPressed: signup,
            ),
          ],
        ),
      ),
    );
  }
}