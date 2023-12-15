class Node {
  int data;
  Node next;

  Node(int data) {
    this.data = data;
    this.next = null;
  }
}

class LinkedList {
  Node head;

  void push(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void removeOccurrences(int target) {
    Node current = head;
    Node previous = null;

    while (current != null) {
      if (current.data == target) {
        
        if (previous == null) {
          
          head = current.next;
        } else {
          
          previous.next = current.next;
        }
      } else {
        
        previous = current;
      }

      current = current.next;
    }
  }

  void printLinkedList() {
    Node current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  
  linkedList.push(5);
  linkedList.push(8);
  linkedList.push(12);
  linkedList.push(4);
  linkedList.push(10);
  linkedList.push(8); 

  print('Original Linked List:');
  linkedList.printLinkedList();

  
  linkedList.removeOccurrences(8);

  print('\nLinked List after removing occurrences of 8:');
  linkedList.printLinkedList();
}
