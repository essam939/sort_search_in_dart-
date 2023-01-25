void main(List<String> args) {
  // an in-place sorting algorithm that works by repeatedly selecting
  // an unsorted element and inserting it into the correct position within
  // the sorted portion of the array. It has a time complexity of O(n^2) on average,
  // but can be optimized to O(n) for almost sorted array.
  List<int> numbers = [5, 3, 8, 1, 4, 7, 6, 2, 9, 10];

void insertionSort(List<int> list) {
  for (int i = 1; i < list.length; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
}

insertionSort(numbers);
print(numbers); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

}