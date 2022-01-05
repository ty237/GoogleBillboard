public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{          
    String thePrime = "";
    for (int i = 0; i < e.length()-10; i++) {
      Double digits = Double.parseDouble(e.substring(i, i+10));
      if (isPrime(digits)) {
        thePrime = e.substring(i, i+10);
        break;
      }
    }
    System.out.println(thePrime);
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num)  
{   
  ArrayList<Integer> myList = new ArrayList<Integer>();
  for (int i = 1; i <= (int)(Math.sqrt(num)); i++) {
    if (num % i == 0) myList.add(i);
  }
  return (num != 1 && myList.size() == 1); 
} 
