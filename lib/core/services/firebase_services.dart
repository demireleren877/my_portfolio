import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static final CollectionReference personal_info =
      FirebaseFirestore.instance.collection("personal_info");
}
