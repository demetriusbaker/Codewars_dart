import 'package:test/expect.dart';
import 'package:test/test.dart';

// int squareSum(List<int> n) => n.fold(0, (a, b) => a + b*b);

squareSum(List<int> l) {
  var sum = 0;
  for (int i = 0; i < l.length; i++) {sum += l[i] * l[i];}
  return sum;
}

void main() {
  test('Basic tests', () {
    expect(squareSum([1,2]), equals(5));
    expect(squareSum([0,3,4,5]), equals(50));
    expect(squareSum([]), equals(0));
    expect(squareSum([-1,-2]), equals(5));
    expect(squareSum([-1,0,1]), equals(2));
  });
}