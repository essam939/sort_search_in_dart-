void main() {
  //  a divide-and-conquer sorting algorithm that divides the array into two equal-sized
  // sub-arrays, recursively sorts each sub-array, and then merges the sorted sub-arrays.
  // It has an average time complexity of O(n log n)
  var data = [8, 3, 1, 7, 0, 10, 2];
  print(mergeSort(data));
}

List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) return arr;

  var middle = arr.length ~/ 2;
  var left = arr.sublist(0, middle);
  var right = arr.sublist(middle);

  return merge(mergeSort(left), mergeSort(right));
}

List<int> merge(List<int> left, List<int> right) {
  var result = <int>[];
  var i = 0;
  var j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  while (i < left.length) {
    result.add(left[i]);
    i++;
  }

  while (j < right.length) {
    result.add(right[j]);
    j++;
  }

  return result;
}
