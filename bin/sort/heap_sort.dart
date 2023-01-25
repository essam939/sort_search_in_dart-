void main() {
  // A comparison-based sorting algorithm that builds a binary heap data structure out of the data,
  // then repeatedly extracts the largest element from the heap and places it at the end of the sorted array.
  var data = [8, 3, 1, 7, 0, 10, 2];
  print(heapSort(data));
}

List<int> heapSort(List<int> arr) {
  var n = arr.length;

  // Build heap (rearrange array)
  for (var i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(arr, n, i);
  }

  // One by one extract an element from heap
  for (var i = n - 1; i >= 0; i--) {
    // Move current root to end
    var temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    // call max heapify on the reduced heap
    heapify(arr, i, 0);
  }
  return arr;
}

void heapify(List<int> arr, int n, int i) {
  var largest = i; // Initialize largest as root
  var l = 2 * i + 1; // left = 2*i + 1
  var r = 2 * i + 2; // right = 2*i + 2

  // If left child is larger than root
  if (l < n && arr[l] > arr[largest]) {
    largest = l;
  }

  // If right child is larger than largest so far
  if (r < n && arr[r] > arr[largest]) {
    largest = r;
  }

  // If largest is not root
  if (largest != i) {
    var swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    // Recursively heapify the affected sub-tree
    heapify(arr, n, largest);
  }
}
