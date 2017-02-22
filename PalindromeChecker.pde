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
  if(reverse(noSpaces(noCapitals(word))).equals(noSpaces(noCapitals(word))))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1; i>=0; i--){
      sNew = sNew +str.substring(i, i+1);
    }
    return sNew;
}
public String noSpaces(String sWord)
{
  String x = new String();
  for(int i=0; i<sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i))==true){
      x = x +sWord.charAt(i);
    }
  }
  return x;
}
public String noCapitals(String xstring)
{
  return xstring.toLowerCase();
}