import 'package:meta/meta.dart';

class SimpleClass {
  @protected
  String name;

  // @private
  int _age;

  SimpleClass(this.name, this._age);

  void printName() {
    print(name);
  }

  void printAge() {
    print(_age);
  }

  // Private method
  void _privateMethod() {
    print('This is a private method');
  }

  @override
  String toString() {
    return 'SimpleClass: $name, $_age';
  }
}

class SubOfSimpleClass extends SimpleClass {
  SubOfSimpleClass(String name, int age) : super(name, age);

  void printName() {
    print('SubOfSimpleClass: $name');
  }

  @override
  String toString() {
    return 'SubOfSimpleClass: $name, $_age';
  }
}