class ResultModel {

  final String courseCode;
  final double marks;
  final double gpa;
  final int attendance;
  final String semester;

  ResultModel({
    required this.courseCode,
    required this.marks,
    required this.gpa,
    required this.attendance,
    required this.semester,
  });

  Map<String, dynamic> toMap() {

    return {
      'courseCode': courseCode,
      'marks': marks,
      'gpa': gpa,
      'attendance': attendance,
      'semester': semester,
    };
  }
}