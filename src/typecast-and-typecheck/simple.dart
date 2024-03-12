class Person {
  String name;
  Person(this.name);
}
class Simple {
  String name;
  Simple(this.name);
}

void main() {
  Object obj = Person("Tona");
  print((obj as Person).name);
  obj = Simple("Tona #2");
  if (obj is Person) {
    print('obj is a Person');
  }
}
