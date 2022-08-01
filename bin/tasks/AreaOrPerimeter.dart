int area_or_perimeter(int l, int w) => l == w ? l * w : 2 * (l + w);

main() {
  print(area_or_perimeter(4, 4)); // 16
  print(area_or_perimeter(6, 10)); // 32
}
