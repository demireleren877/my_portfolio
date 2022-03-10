import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static final CollectionReference personalInfo =
      FirebaseFirestore.instance.collection("personal_info");
  static final CollectionReference header =
      FirebaseFirestore.instance.collection("header");
}
