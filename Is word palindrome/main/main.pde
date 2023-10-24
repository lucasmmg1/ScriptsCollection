void setup()
{
  CheckForPalindrome("ovo"); //<>//
}

void CheckForPalindrome(String word)
{
  char[] w = new char[word.length()];
  for (int x = word.length(); x > 0; x--)
  {
    w[0 + word.length() - x] = word.charAt(x - 1);
  }
  
  reverse(w);
  
  var isPalindrome = true;
  for (int x = 0; x < word.length(); x++)
  {
    println(word.charAt(x));
    println(w[x]);
    if (word.charAt(x) == w[x]) continue;
    isPalindrome = false;
    break;
  }
  
  println("The typed word" + (isPalindrome ? " is palindrome" : " is not palindrome")); //<>// //<>//
}
