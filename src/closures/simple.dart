/// Returns a function that adds [addBy] to a number.
Function makeAdder(num addBy) {
  adder(num i) {
    return addBy + i;
  }
  return adder;
}

Function makeAdder2(num addBy) {
  return (num i) {
    print('addBy = $addBy, i = $i');
    return addBy + i;
  };
}

main() {
  var add2 = makeAdder(2); // Create a function that adds 2.
  var add4 = makeAdder(4); // Create a function that adds 4.
  var add6 = makeAdder2(6); // Create a function that adds 6.

  assert(add2(3) == 5);
  assert(add4(3) == 7);

  print('add6(3) = ${add6(3)}');
}
