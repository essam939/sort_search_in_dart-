import 'dart:math' as math;
void main() {
  //  a non-comparison sorting algorithm that sorts the elements by first grouping 
  //the individual digits of the same place value. It has a time complexity of O(nk) 
  //where k is the number of digits in the largest number.
  var data = [329, 457, 657, 839, 436, 720, 355];
  print(radixSort(data));
}

List<int> radixSort(List<int> arr) {
  var max = arr.reduce(math.max);
  for (var exp = 1; max ~/ exp > 0; exp *= 10) {
    arr = countingSort(arr, exp);
  }
  return arr;
}

List<int> countingSort(List<int> arr, int exp) {
  var output = List.filled(arr.length, 0);
  var count = List.filled(10, 0);

  for (var i = 0; i < arr.length; i++) {
    count[(arr[i] ~/ exp) % 10]++;
  }

  for (var i = 1; i < count.length; i++) {
    count[i] += count[i - 1];
  }

  for (var i = arr.length - 1; i >= 0; i--) {
    output[count[(arr[i] ~/ exp) % 10] - 1] = arr[i];
    count[(arr[i] ~/ exp) % 10]--;
  }

  return output;
}
