import "dart:convert";
import "package:dart_sort_student_list/dart_sort_student_list.dart"
    as dart_sort_student_list;

void main() {
  String jsonString = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  List<Map<String, String>> studentList = List<Map<String, String>>.from(
      jsonDecode(jsonString).map((person) => Map<String, String>.from(
          person))); // Convert JSON string to a list of maps

  dart_sort_student_list.Students students =
      dart_sort_student_list.Students(studentList);

  // Sort by first name
  print('Sorted by first name:');
  students.sort('first');
  students.output();

  // Add a new person
  print('\nAfter adding a new student:');
  students
      .plus({"first": "Jane", "last": "Doe", "email": "janedoe@example.com"});
  students.output();

  // Remove a person by first name
  print('\nAfter removing Steve:');
  students.remove("Steve");
  students.output();
}
