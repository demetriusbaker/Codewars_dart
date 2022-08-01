import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

List<String> fixTheMeerkat(List<String> arr) => [arr[2], arr[1], arr[0]];

void testing(List<String> arr, List<String> exp) => test(
    "Testing for ${arr.map((x) => "\"$x\"").toList()}",
    () => expect(fixTheMeerkat(arr), equals(exp)));
void main() {
  group('Basic tests', () {
    testing(["tail", "body", "head"], ["head", "body", "tail"]);
    testing(["tails", "body", "heads"], ["heads", "body", "tails"]);
    testing(["bottom", "middle", "top"], ["top", "middle", "bottom"]);
    testing(["lower legs", "torso", "upper legs"],
        ["upper legs", "torso", "lower legs"]);
    testing(["ground", "rainbow", "sky"], ["sky", "rainbow", "ground"]);
  });
}
