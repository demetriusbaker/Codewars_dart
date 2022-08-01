int findDifference(List<int> a, List<int> b) => (a.reduce((v, e) => v * e) - b.reduce((v, e) => v * e)).abs();

main() {
  print(findDifference([3, 2, 5], [1, 4, 4])); // 14
}