class TeacherModel {

  final String name;
  final String email;
  final String department;

  TeacherModel({
    required this.name,
    required this.email,
    required this.department,
  });

  Map<String, dynamic> toMap() {

    return {
      'name': name,
      'email': email,
      'department': department,
    };
  }
}