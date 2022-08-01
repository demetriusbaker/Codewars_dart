import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String well(List<String> x) {
  int goodCount = x.where((element) => element == 'good').length;
  return goodCount > 2 ? 'I smell a series!' : goodCount >= 1 ? 'Publish!' : 'Fail!';
}

void main(List<String> args) {
  test("Testing for ['bad', 'bad', 'bad']",
      () => expect(well(['bad', 'bad', 'bad']), equals('Fail!')));
  test(
      "Testing for ['good', 'bad', 'bad', 'bad', 'bad']",
      () => expect(
          well(['good', 'bad', 'bad', 'bad', 'bad']), equals('Publish!')));
  test(
      "Testing for ['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good']",
      () => expect(
          well([
            'good',
            'bad',
            'bad',
            'bad',
            'bad',
            'good',
            'bad',
            'bad',
            'good'
          ]),
          equals('I smell a series!')));
}
