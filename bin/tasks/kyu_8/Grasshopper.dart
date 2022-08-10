import 'package:test/expect.dart';
import 'package:test/test.dart';

int move(int pos, int roll) => pos + roll * 2;

main() {
  test("move(0, 4)", () => expect(move(0, 4), equals(8)));
  test("move(3, 6)", () => expect(move(3, 6), equals(15)));
  test("move(2, 5)", () => expect(move(2, 5), equals(12)));
}
