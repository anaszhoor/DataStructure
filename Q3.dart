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

  void reverseLinkedList() {
    Node prev = null;
    Node current = head;
    Node nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
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

  print('Original Linked List:');
  linkedList.printLinkedList();

  
  linkedList.reverseLinkedList();

  print('\nReversed Linked List:');
  linkedList.printLinkedList();
}
