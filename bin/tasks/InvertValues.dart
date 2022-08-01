invert(List<int> a) => a.map((e) => -e).toList();

main() {
  print(invert([1, 2, 3, 4, 5]));
}