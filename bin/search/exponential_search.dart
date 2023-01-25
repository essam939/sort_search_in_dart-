import 'dart:math';

void main() {
  // a search algorithm that first finds the range where the element is present and then uses
  // binary search to find the element in that range. It has a time complexity of O(log n) 
  //in the average and worst-case scenario.

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
 
print(exponentialSearch(numbers, 7)); // Output: 6

}
int exponentialSearch(List<int> list, int target) {
  if (list[0] == target) {
    return 0;
  }

  int i = 1;
  while (i < list.length && list[i] <= target) {
    i = i * 2;
  }

  double start = i/ 2;
  int end = min(i, list.length);
  return binarySearch(list, target, start.toInt(), end);
}

int binarySearch(List<int> list, int target, int start, int end) {
  if (start > end) {
    return -1;
  }

  int mid = (start + end) ~/ 2;
  if (list[mid] == target) {
    return mid;
  } else if (list[mid] > target) {
    return binarySearch(list, target, start, mid - 1);
  } else {
    return binarySearch(list, target, mid + 1, end);
  }
}
