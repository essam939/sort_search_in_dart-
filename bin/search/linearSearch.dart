import 'package:search_sort/search_sort.dart' as search_sort;

void main() {
  // a simple search algorithm that iterates through an array or a list, 
  //comparing each element to the target value until a match is found.
  // It has a time complexity of O(n) in the worst case scenario.
List<int> numbers = [1, 2, 3, 4, 5];
print(linearSearch(numbers, 3)); // Output: 2
}
int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1;
}