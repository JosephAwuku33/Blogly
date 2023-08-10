import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:blogly/models/courses.dart';

class CourseRepo {
  final CollectionReference coursesCollection =
      FirebaseFirestore.instance.collection('collection');

  Future<List<Courses>> getCourses() async {
    QuerySnapshot querySnapshot = await coursesCollection.get();
    List<Courses> coursesList = [];

    for (var doc in querySnapshot.docs) {
      coursesList.add(Courses(
        title: doc['title'],
        name: doc['name'],
        description: doc['description'],
        imageUrl: doc['imageUrl'],
      ));
    }

    return coursesList;
  }
}
