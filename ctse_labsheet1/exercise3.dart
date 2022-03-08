void main() {
  final List<int> numbers = [364, 457, 3948, 62, 248]
    ..insert(0, 10)
    ..sort((a, b) => a.compareTo(b));

  print(numbers);
}
