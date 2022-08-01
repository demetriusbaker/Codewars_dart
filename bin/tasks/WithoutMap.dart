import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

List<int> maps(List<int> arr) => arr.map((e) => e * 2).toList();

main() {
  test("Testing for [1, 2, 3]",
      () => expect(maps([1, 2, 3]), equals([2, 4, 6])));
  test("Testing for [4, 1, 1, 1, 4]",
      () => expect(maps([4, 1, 1, 1, 4]), equals([8, 2, 2, 2, 8])));
  test("Testing for [2, 2, 2, 2, 2, 2]",
      () => expect(maps([2, 2, 2, 2, 2, 2]), equals([4, 4, 4, 4, 4, 4])));
}
