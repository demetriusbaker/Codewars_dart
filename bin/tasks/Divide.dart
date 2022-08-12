import 'package:test/expect.dart';
import 'package:test/test.dart';

bool isDivisible(int n, int x, int y) => n % x == 0 && n % y == 0;

void tester(int n, int x, int y, bool exp) => test("isDivisible($n, $x, $y)", () => expect(isDivisible(n, x, y), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(3, 3, 4, false);
    tester(12, 3, 4, true);
    tester(8, 3, 4, false);
    tester(48, 3, 4, true);
    tester(100, 5, 10, true);
    tester(100, 5, 3, false);
    tester(4, 4, 2, true);
    tester(5, 2, 3, false);
    tester(17, 17, 17, true);
    tester(17, 1, 17, true);
  });
}