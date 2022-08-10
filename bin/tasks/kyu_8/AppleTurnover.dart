import 'dart:math';

String apple(dynamic a) =>
    (a is String ? int.tryParse(a) ?? 0 : a / 1) > sqrt(1000)
        ? "It's hotter than the sun!!"
        : 'Help yourself to a honeycomb Yorkie for the glovebox.';

void main(List<String> args) {
  print(apple('50'));
  print(apple(2));
  print(apple("Hi!"));
}
