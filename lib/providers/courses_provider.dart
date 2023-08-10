import 'package:flutter/material.dart';
import 'package:blogly/models/courses.dart';
import 'package:blogly/firebase/authentication/repository/course_repository.dart';

class CoursesProvider extends ChangeNotifier {
  List<Courses> _courses = [];

  List<Courses> get courses => _courses;

  Future<void> loadCourses() async {
    _courses = await CourseRepo().getCourses();
  }
}
