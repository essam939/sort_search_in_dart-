void main(List<String> args) {
  //  a simple sorting algorithm that repeatedly steps through the list to be sorted,
  // compares each pair of adjacent items and swaps them if they are in the wrong order. 
  //It has a time complexity of O(n^2) on average, but can be optimized to O(n) for almost sorted array.
  List<int> numbers = [5, 3, 8, 1, 4, 7, 6, 2, 9, 10];
bubbleSort(numbers);
print(numbers); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

}
void bubbleSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}