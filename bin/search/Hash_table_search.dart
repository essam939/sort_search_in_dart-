class HashTable {
 late List<List<int>> _table;
 late int _size;

  HashTable(int size) {
    _table = List<List<int>>.generate(size, (_) => []);
    _size = size;
  }

  int _hashFunction(int key) {
    return key % _size;
  }

  void insert(int key) {
    int index = _hashFunction(key);
    _table[index].add(key);
  }

  bool search(int key) {
    int index = _hashFunction(key);
    for (int k in _table[index]) {
      if (k == key) {
        return true;
      }
    }
    return false;
  }
}

void main() {
    // a search algorithm that uses a hash function to map keys to their corresponding values.
  // It has a time complexity of O(1) in average cases, but O(n) in worst case.
  HashTable hashTable = HashTable(10);
  hashTable.insert(5);
  hashTable.insert(15);
  hashTable.insert(25);
  print(hashTable.search(5)); // Output: true
  print(hashTable.search(15)); // Output: true
  print(hashTable.search(25)); // Output: true
  print(hashTable.search(35)); // Output: false
}
