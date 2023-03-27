object CaesarCipher
{
   def main(args: Array[String]) 
   {
      var testString = "Bugs Bunny"
      var shifta = 7
      var i = 0
      testString = testString.toLowerCase() //make string lowercase
      
      println(testString)
      println(shifta)
      
      encrypt(testString, shifta, i) //call encrypt function

   }
   
   def encrypt(testOne: String, shiftb: Int, j: Int)
   {
       
      var x = testOne.toCharArray.map(ascii)
      println(x(j))
      j += 1
      
      encrypt(testOne, shiftb, j)
      
      /*
      var x = testOne.charAt(0)
      print(x)
      var y = x.toInt
      println(y)
      */
        
       
       
   }
   
   def ascii(a: Char): Int =
   {
       return a.toInt
   }
}
