void main() {
  //  a search algorithm that takes advantage of the ordered nature of the data and repeatedly
  // divides the search interval in half. It has a time complexity of O(log n) in the average 
  //and worst-case scenario.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int binarySearch(List<int> list, int target) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      if (list[mid] == target) {
        return mid;
      } else if (list[mid] > target) {
        high = mid - 1;
      } else {
        low = mid + 1;
      }
    }
    return -1;
  }

  print(binarySearch(numbers, 7)); // Output: 6
}
