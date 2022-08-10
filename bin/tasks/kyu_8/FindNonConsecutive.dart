int? firstNonConsecutive(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    if ((arr[i] - arr[i + 1]).abs() != 1) return arr[i + 1];
  }
  return null;
}

main() {
  print(firstNonConsecutive(const [1, 2, 3, 4, 6, 7, 8]));
}
