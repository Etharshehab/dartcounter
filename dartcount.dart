void main() {
  int increment(int currentValue) => currentValue + 1;
  int decrement(int currentValue) => currentValue - 1;

  Counter count1 = Counter(counting: increment);

  count1.value = count1.counting(count1.value);
  print('Incremented Value: ${count1.value}');

  count1.counting = decrement;
  count1.value = count1.counting(count1.value);
  print('Decremented Value: ${count1.value}');
}

class Counter {
  int value = 0;
  int Function(int) counting;

  Counter({required this.counting});
}
