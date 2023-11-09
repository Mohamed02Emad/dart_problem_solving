bool isPalindrome(int x) {
  var string = x.toString();
  for (int i = 0; i < string.length / 2; i++) {
    if (string[i] != string[string.length - 1 - i]) {
      return false;
    }
  }
  return true;
}