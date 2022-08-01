import 'package:test/expect.dart';
import 'package:test/test.dart';

String smash(List<String> words) => words.join(' ');

void main(List<String> args) {
  test('Testing for []', () {
      expect(smash([]), equals(""));
    });
    test('Testing for ["hello"]', () {
      expect(smash(["hello"]), equals("hello"));
    });
    test('Testing for ["hello", "world"]', () {
      expect(smash(["hello", "world"]), equals("hello world"));
    });
    test('Testing for ["hello", "amazing", "world"]', () {
      expect(smash(["hello", "amazing", "world"]), equals("hello amazing world"));
    });
    test('Testing for ["this", "is", "a", "really", "long", "sentence"]', () {
      expect(smash(["this", "is", "a", "really", "long", "sentence"]), equals("this is a really long sentence"));
    });
}