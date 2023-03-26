object CaesarCipher
{
   def main(args: Array[String]) 
   {
      var testString = "Bugs Bunny"
      testString = testString.toLowerCase() //make string lowercase
      println(testString)
      var shifta = 7
      println(shifta)
      
      encrypt(testString, shifta) //call encrypt function

   }
   
   def encrypt(testOne: String, shiftb: Int)
   {
       
       var x = testOne.split("").map(ascii)
       
       
   }
   
   def ascii(a: String)
   {
       return a.toInt()
   }
}
