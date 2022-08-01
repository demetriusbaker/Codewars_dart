import 'package:test/expect.dart';
import 'package:test/test.dart';

int positiveSum(List<int> arr) {
  int pos = 0;
  for (var it in arr) {
    if (it > 0) pos += it;
  }
  return pos;
}

void main(List<String> args) {
  test("Testing for [1, 2, 3, 4, 5]",
      () => expect(positiveSum([1, 2, 3, 4, 5]), equals(15)));
  test("Testing for [1, -2, 3, 4, 5]",
      () => expect(positiveSum([1, -2, 3, 4, 5]), equals(13)));
  test("Testing for []", () => expect(positiveSum([]), equals(0)));
  test("Testing for [-1, -2, -3, -4, -5]",
      () => expect(positiveSum([-1, -2, -3, -4, -5]), equals(0)));
  test("Testing for [-1, 2, 3, 4, -5]",
      () => expect(positiveSum([-1, 2, 3, 4, -5]), equals(9)));
}
