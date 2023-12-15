void printListInReverse(List<int> list) {
  for (int i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5];

  print('Original List:');
  print(myList);

  print('\nList in Reverse Order:');
  printListInReverse(myList);
}
