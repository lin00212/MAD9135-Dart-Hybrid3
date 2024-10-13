class Students {
  List<Map<String, String>> people;

  Students(
      this.people); // Constructor accepting a list of maps and initializing the instance variable.

  void sort(String string) {
    people.sort((a, b) => a[string]!.compareTo(b[string]!));
  }

  void output() {
    // print the sorted list of maps.
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    // Add a new map to the list.
    people.add(person);
  }

  void remove(String string) {
    // Remove a person from the list using removeWhere.\\\\\\
    people.removeWhere((person) =>
        person['first'] == string ||
        person['last'] == string ||
        person['email'] == string); //
  }
}
