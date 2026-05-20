import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final FirebaseFirestore firestore =
      FirebaseFirestore.instance;

  Future<void> addStudent({
    required String id,
    required Map<String, dynamic> data,
  }) async {

    await firestore
        .collection('students')
        .doc(id)
        .set(data);
  }

  Future<void> addTeacher({
    required String id,
    required Map<String, dynamic> data,
  }) async {

    await firestore
        .collection('teachers')
        .doc(id)
        .set(data);
  }
}