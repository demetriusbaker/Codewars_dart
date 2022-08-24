import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'functions.dart';

void main(List<String> args) {
  print("7 kyu - You're a square!");

  test('should work for some examples', () {
    expect(isSquare(-1), false);
    expect(isSquare(0), true);
    expect(isSquare(3), false);
    expect(isSquare(4), true);
    expect(isSquare(25), true);
    expect(isSquare(26), false);
  });

  print("8 kyu - Grasshopper - Messi goals function");

  test("goals(0, 0, 0)", () => expect(goals(0, 0, 0), equals(0)));
  test("goals(43, 10, 5)", () => expect(goals(43, 10, 5), equals(58)));

  print("8 kyu - Grasshopper - Summation");

  test("Testing for 1", () => expect(summation(1), equals(1)));
  test("Testing for 8", () => expect(summation(8), equals(36)));
  test("Testing for 22", () => expect(summation(22), equals(253)));
  test("Testing for 100", () => expect(summation(100), equals(5050)));
  test("Testing for 213", () => expect(summation(213), equals(22791)));

  print("8 kyu - Grasshopper - Check for factor");

  test("should return true", () {
    expect(checkForFactor(10, 2), equals(true));
    expect(checkForFactor(63, 7), equals(true));
    expect(checkForFactor(2450, 5), equals(true));
    expect(checkForFactor(24612, 3), equals(true));
  });
  test("should return false", () {
    expect(checkForFactor(9, 2), equals(false));
    expect(checkForFactor(653, 7), equals(false));
    expect(checkForFactor(2453, 5), equals(false));
    expect(checkForFactor(24617, 3), equals(false));
  });

  print("8 kyu - Find the smallest integer in the array");

  test("Test 1",
      () => expect(findSmallestInt([3, 4, 5, 1, 7, 2, 4, 7]), equals(1)));
  test(
      "Test 2",
      () => expect(findSmallestInt([324, 578, -12, 647, 34346, 12, 95, -500]),
          equals(-500)));
  test(
      "Test 3",
      () => expect(findSmallestInt([-346, 35467, 234, 0, 254, -39, -999]),
          equals(-999)));

  print("8 kyu - Sum Arrays");

  test("Testing for []", () => expect(sum([]), equals(0)));
  test("Testing for [5]", () => expect(sum([5]), equals(5)));
  test("Testing for [-5]", () => expect(sum([-5]), equals(-5)));
  test("Testing for [1, 2, 3.4, 4.3]",
      () => expect(sum([1, 2, 3.4, 4.3]), equals(10.7)));
  test("Testing for [1, -3, 2, 3, 4, -1]",
      () => expect(sum([1, -3, 2, 3, 4, -1]), equals(6)));

  print("7 kyu - 16+18=214");

  test("Sample Tests", () {
    expect(add(16, 18), equals(214));
    expect(add(2, 11), equals(13));
    expect(add(0, 1), equals(1));
    expect(add(0, 0), equals(0));
  });
}
