public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }}}
public boolean palindrome(String word)
{
  if(noSpaces(word).toLowerCase().equals(yesSpaces(word).toLowerCase()))
    return true;
  return false;}
public String noSpaces(String sWord){
  String s = new String();
  for(int i = 0; i<sWord.length();i++){
    if(Character.isLetter(sWord.charAt(i))==true){
      s = s + sWord.substring(i,i+1);
    }}
  return s;}
public String yesSpaces(String sWord){
  String s = new String();
  for(int i = sWord.length()-1; i>=0; i--){
    if(Character.isLetter(sWord.charAt(i))==true){
      s = s + sWord.substring(i,i+1);
    }}
  return s;}
