import 'dart:math';

void main() {
  //  a search algorithm that uses Fibonacci numbers to find the position of the target element.
  // It has a time complexity of O(log n) in the average and worst-case scenario
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(fibonacciSearch(numbers, 7)); // Output: 6
}

int fibonacciSearch(List<int> list, int target) {
  int fib2 = 0; // (m-2)'th Fibonacci No.
  int fib1 = 1; // (m-1)'th Fibonacci No.
  int fibM = fib2 + fib1; // m'th Fibonacci
  int offset = -1;

  // gets the smallest fibonacci number greater than or equal to the size of the list
  while (fibM < list.length) {
    fib2 = fib1;
    fib1 = fibM;
    fibM = fib2 + fib1;
  }

  // offset will be the next index from the end of the list
  while (fibM > 1) {
    int i = min(offset + fib2, list.length - 1);
    if (list[i] < target) {
      fibM = fib1;
      fib1 = fib2;
      fib2 = fibM - fib1;
      offset = i;
    } else if (list[i] > target) {
      fibM = fib2;
      fib1 = fib1 - fib2;
      fib2 = fibM - fib1;
    } else {
      return i;
    }
  }
  if (fib1 == 1 && list[offset + 1] == target) {
    return offset + 1;
  }
  return -1;
}
