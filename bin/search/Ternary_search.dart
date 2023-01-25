void main() {
  // a search algorithm that divides the array into three parts and recursively applies
  // the search algorithm on each of the two parts in which the target element can be present.
  // It has a time complexity of O(log n) in the average and worst-case scenario.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

int ternarySearch(List<int> list, int target) {
  return ternarySearchHelper(list, target, 0, list.length - 1);
}
print(ternarySearch(numbers, 7)); // Output: 6

}
int ternarySearchHelper(List<int> list, int target, int left, int right) {
  if (left > right) {
    return -1;
  }
  int mid1 = left + (right - left) ~/ 3;
  int mid2 = right - (right - left) ~/ 3;

  if (list[mid1] == target) {
    return mid1;
  }
  if (list[mid2] == target) {
    return mid2;
  }
  if (target < list[mid1]) {
    return ternarySearchHelper(list, target, left, mid1 - 1);
  } else if (target > list[mid2]) {
    return ternarySearchHelper(list, target, mid2 + 1, right);
  } else {
    return ternarySearchHelper(list, target, mid1 + 1, mid2 - 1);
  }
}