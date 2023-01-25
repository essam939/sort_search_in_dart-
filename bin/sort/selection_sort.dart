void main() {
  // an in-place sorting algorithm that repeatedly finds the minimum element from the unsorted part 
  //and swaps it with the first element. It has a time complexity of O(n^2)
  List<int> data = [5, 3, 8, 1, 4, 6];
  print("Original data: $data");
  selectionSort(data);
  print("Sorted data: $data");
}

void selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[minIndex];
    arr[minIndex] = arr[i];
    arr[i] = temp;
  }
}
