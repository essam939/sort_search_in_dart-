void main() {
  // Interpolation search: a search algorithm that uses the value of the target element 
  //and the value of the elements at the corners of the array to estimate the position of the target 
  //element. It has a time complexity of O(log log n)

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

int interpolationSearch(List<int> list, int target) {
  int low = 0;
  int high = list.length - 1;

  while (low <= high && target >= list[low] && target <= list[high]) {
    int pos = low + ((target - list[low]) * (high - low) / (list[high] - list[low])).toInt();

    if (list[pos] == target) {
      return pos;
    }

    if (list[pos] < target) {
      low = pos + 1;
    } else {
      high = pos - 1;
    }
  }
  return -1;
}

print(interpolationSearch(numbers, 7)); // Output: 6

}
