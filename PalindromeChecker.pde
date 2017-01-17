public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String redux = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if (!word.substring(i,i+1).equals(" ") && !word.substring(i,i+1).equals(",") && !word.substring(i,i+1).equals(".") && !word.substring(i,i+1).equals("'") && !word.substring(i,i+1).equals("!"))
      redux = redux + word.substring(i, i+1);
  }
  if (redux.equalsIgnoreCase(reverse(word)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i > -1; i--)
    {
      if (!str.substring(i,i+1).equals(" ") && !str.substring(i,i+1).equals(",") && !str.substring(i,i+1).equals(".") && !str.substring(i,i+1).equals("'") && !str.substring(i,i+1).equals("!"))
        sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}


