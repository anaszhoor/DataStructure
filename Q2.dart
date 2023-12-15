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

  Node findMiddleNode() {
    if (head == null) {
      return null;
    }

    Node slowPointer = head;
    Node fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer.next;
      fastPointer = fastPointer.next.next;
    }

    return slowPointer;
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  
  linkedList.push(5);
  linkedList.push(8);
  linkedList.push(12);
  linkedList.push(4);
  linkedList.push(10);

  
  Node middleNode = linkedList.findMiddleNode();
  if (middleNode != null) {
    print('Middle Node: ${middleNode.data}');
  } else {
    print('The linked list is empty.');
  }
}
