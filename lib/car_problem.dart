import 'dart:ffi';


class Car {

  static final List<String> _names = [];

  static bool addName(String name) {
    if (_names.contains(name)) {
      throw Exception("This Car Exists");
    }
    _names.add(name);
    return true;
  }

  String name = "";

  Car(String name) {
    if (addName(name)) {
      this.name = name;
    }
  }
}
