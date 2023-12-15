//Q1
class Node {
  final int data;
  Node? next;

  Node(this.data);

  static void printReversed(Node head) {
    List<Node> stack = [];
    while (head != null) {
      stack.add(head);
      head = head.next;
    }

    while (stack.isNotEmpty) {
      print(stack.removeLast().data);
    }
  }
}


void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);

  Node.printReversed(head); // Prints 3, 2, 1
}
