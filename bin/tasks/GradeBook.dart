import "package:test/test.dart";

void main() {
  test("getGrade(95, 90, 93)", () => expect(getGrade(95, 90, 93), equals('A')));
  test("getGrade(100, 85, 96)",
      () => expect(getGrade(100, 85, 96), equals('A')));
  test("getGrade(92, 93, 94)", () => expect(getGrade(92, 93, 94), equals('A')));
  test("getGrade(100, 100, 100)",
      () => expect(getGrade(100, 100, 100), equals('A')));
  test("getGrade(70, 70, 100)",
      () => expect(getGrade(70, 70, 100), equals('B')));
  test("getGrade(82, 85, 87)", () => expect(getGrade(82, 85, 87), equals('B')));
  test("getGrade(84, 79, 85)", () => expect(getGrade(84, 79, 85), equals('B')));
  test("getGrade(70, 70, 70)", () => expect(getGrade(70, 70, 70), equals('C')));
  test("getGrade(75, 70, 79)", () => expect(getGrade(75, 70, 79), equals('C')));
  test("getGrade(60, 82, 76)", () => expect(getGrade(60, 82, 76), equals('C')));
  test("getGrade(65, 70, 59)", () => expect(getGrade(65, 70, 59), equals('D')));
  test("getGrade(66, 62, 68)", () => expect(getGrade(67, 62, 68), equals('D')));
  test("getGrade(58, 62, 70)", () => expect(getGrade(58, 62, 70), equals('D')));
  test("getGrade(44, 55, 52)", () => expect(getGrade(44, 55, 52), equals('F')));
  test("getGrade(48, 55, 52)", () => expect(getGrade(48, 55, 52), equals('F')));
  test("getGrade(58, 59, 60)", () => expect(getGrade(58, 59, 60), equals('F')));
  test("getGrade(0, 0, 0)", () => expect(getGrade(0, 0, 0), equals('F')));
}

Map grade = {
  10: 'A',
  9: 'A',
  8: 'B',
  7: 'C',
  6: 'D',
  5: 'F',
  4: 'F',
  3: 'F',
  2: 'F',
  1: 'F',
  0: 'F',
};

String getGrade(int a, int b, int c) => grade[((a + b + c) / 3.0) ~/ 10];
