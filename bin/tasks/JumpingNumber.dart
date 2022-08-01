import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String jumpingNumber(int n) {
  if (n < 10) return "Jumping!!";
  var numbers = n.toString().split('');
  for (int i = 0; i < numbers.length - 1; i++)
    if ((int.parse(numbers[i]) - int.parse(numbers[i + 1])).abs() == 1)
      continue;
    else
      return "Not!!";
  return "Jumping!!";
}

void main(List<String> args) {
  test("Testing for 1", () {
    expect(jumpingNumber(1), equals("Jumping!!"));
  });
  test("Testing for 7", () {
    expect(jumpingNumber(7), equals("Jumping!!"));
  });
  test("Testing for 9", () {
    expect(jumpingNumber(9), equals("Jumping!!"));
  });
  test("Testing for 23", () {
    expect(jumpingNumber(23), equals("Jumping!!"));
  });
  test("Testing for 32", () {
    expect(jumpingNumber(32), equals("Jumping!!"));
  });
  test("Testing for 79", () {
    expect(jumpingNumber(79), equals("Not!!"));
  });
  test("Testing for 98", () {
    expect(jumpingNumber(98), equals("Jumping!!"));
  });
  test("Testing for 8987", () {
    expect(jumpingNumber(8987), equals("Jumping!!"));
  });
  test("Testing for 4343456", () {
    expect(jumpingNumber(4343456), equals("Jumping!!"));
  });
  test("Testing for 98789876", () {
    expect(jumpingNumber(98789876), equals("Jumping!!"));
  });
}
