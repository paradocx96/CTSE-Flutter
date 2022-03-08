// Option 1

void main() {
  int? someValue;
  increaseAndPrint(someValue ?? 0);
}

void increaseAndPrint(int value) {
  value++;
  print(value);
}
