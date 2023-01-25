import 'dart:math';

void  main() {
  // a search algorithm that works by jumping a fixed number of elements in the array, then doing a linear search
  // within that block. It has a time complexity of O(√n) in the average and worst-case scenario.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

print(jumpSearch(numbers, 7)); // Output: 6
}

int jumpSearch(List<int> list, int target) {
  int blockSize = (sqrt(list.length)).toInt();
  int start = 0;
  int next = blockSize;

  while (start < list.length && list[next - 1] < target) {
    start = next;
    next += blockSize;
    if (next > list.length) {
      return -1;
    }
  }

  for (int i = start; i < next; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1;
}
