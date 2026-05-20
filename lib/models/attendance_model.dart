class AttendanceModel {

  final String studentId;
  final int totalClass;
  final int attendedClass;

  AttendanceModel({
    required this.studentId,
    required this.totalClass,
    required this.attendedClass,
  });

  double get percentage {

    return (attendedClass / totalClass) * 100;
  }
}