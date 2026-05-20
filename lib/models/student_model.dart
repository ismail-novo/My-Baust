class StudentModel {

  final String name;
  final String studentId;
  final String department;
  final String level;
  final String term;
  final String section;
  final String batch;
  final double cgpa;

  StudentModel({
    required this.name,
    required this.studentId,
    required this.department,
    required this.level,
    required this.term,
    required this.section,
    required this.batch,
    required this.cgpa,
  });

  Map<String, dynamic> toMap() {

    return {
      'name': name,
      'studentId': studentId,
      'department': department,
      'level': level,
      'term': term,
      'section': section,
      'batch': batch,
      'cgpa': cgpa,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {

    return StudentModel(
      name: map['name'],
      studentId: map['studentId'],
      department: map['department'],
      level: map['level'],
      term: map['term'],
      section: map['section'],
      batch: map['batch'],
      cgpa: (map['cgpa'] ?? 0).toDouble(),
    );
  }
}