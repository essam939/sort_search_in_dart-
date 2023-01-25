void main() {
  // A distribution sort algorithm that separates the elements of an array into a number
  // of buckets, then sorts each bucket individually, either using a different sorting algorithm 
  //or by recursively applying the bucket sorting algorithm.
  var data = [0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434];
  print(bucketSort(data));
}

List<double> bucketSort(List<double> arr) {
  var n = arr.length;
  var buckets = List.generate(n, (i) => []);

  for (var i = 0; i < n; i++) {
    var index = (n * arr[i]).floor();
    buckets[index].add(arr[i]);
  }

  for (var i = 0; i < n; i++) {
    buckets[i].sort();
  }

  var result = <double>[];
  for (var i = 0; i < n; i++) {
    result.addAll(buckets[i]);
  }
  return result;
}
