void main() {
  // a divide-and-conquer sorting algorithm that uses a pivot element to partition the array into
  // two sub-arrays and then recursively sorts each sub-array. It has an average time complexity
  // of O(n log n)
  List<int> arr = [3, 8, 1, 4, 2, 6, 9, 5];
  print("Original Array: $arr");
  quickSort(arr, 0, arr.length - 1);
  print("Sorted Array: $arr");
}

void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[low];
  int i = low - 1;
  int j = high + 1;

  while (true) {
    do {
      i++;
    } while (arr[i] < pivot);
    do {
      j--;
    } while (arr[j] > pivot);

    if (i >= j) {
      return j;
    }
    swap(arr, i, j);
  }
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

