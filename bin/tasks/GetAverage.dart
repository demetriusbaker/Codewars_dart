int getAverage(List<int> arr) => arr.reduce((value, element) => value + element) ~/ arr.length;

main() {
  print(getAverage([1, 2, 3, 4, 5]));
}