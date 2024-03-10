
import 'class/simple_class.dart';

 main() {
  var simpleClass = SimpleClass('John #2', 30);
  // var simpleClass = SubOfSimpleClass('John #2', 30);
  simpleClass.printName();
  simpleClass.printAge();
  print(simpleClass);
  // simpleClass._age = 60;
  //simpleClass._privateMethod();
}