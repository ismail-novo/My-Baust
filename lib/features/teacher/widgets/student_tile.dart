import 'package:flutter/material.dart';

import '../screens/student_details_screen.dart';

class StudentTile extends StatelessWidget {

  final String name;
  final String id;

  const StudentTile({
    super.key,
    required this.name,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      child: ListTile(

        title: Text(name),

        subtitle: Text(id),

        trailing: const Icon(Icons.arrow_forward),

        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  StudentDetailsScreen(
                    studentId: id,
                  ),
            ),
          );
        },
      ),
    );
  }
}