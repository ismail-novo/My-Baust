import 'package:flutter/material.dart';

class TeacherLoginScreen extends StatelessWidget {

  const TeacherLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Teacher Login"),
      ),

      body: const Center(
        child: Text("Teacher Login"),
      ),
    );
  }
}