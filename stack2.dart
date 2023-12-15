bool areParenthesesBalanced(String str) {
  List<String> stack = [];

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (currentChar == '(' || currentChar == '[' || currentChar == '{') {
      
      stack.add(currentChar);
    } else if (currentChar == ')' || currentChar == ']' || currentChar == '}') {
      
      if (stack.isEmpty) {
        return false;
      }

      
      String topElement = stack.removeLast();
      if (
        (currentChar == ')' && topElement != '(') ||
        (currentChar == ']' && topElement != '[') ||
        (currentChar == '}' && topElement != '{')
      ) {
        return false;
      }
    }
  }

  
  return stack.isEmpty;
}

void main() {
  String balancedString = "({[]})";
  String unbalancedString = "({[})";

  print('Balanced String: ${areParenthesesBalanced(balancedString)}');
  print('Unbalanced String: ${areParenthesesBalanced(unbalancedString)}');
}
