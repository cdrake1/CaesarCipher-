 object CaesarCipher
{
   def main(args: Array[String]) 
   {
      var testString = "Bugs Bunny"
      testString = testString.toLowerCase() //make string lowercase
      var shifta = 7
      var i = 0
      
      println(testString)
      
      encrypt(testString, shifta, i) //call encrypt function

   }
   
   def encrypt(testOne: String, shiftb: Int, j: Int)
   {
       var asciiArray = testOne.toCharArray().map(ascii)
       var size = asciiArray.length
       
       if(asciiArray(j) >= 97 & asciiArray(j) <= 122)
       {
           asciiArray(j) = ((asciiArray(j) - 97 + shiftb) % 26) + 97
           
       }
       
       var tempj = j + 1
       
       if(tempj < size)
       {
           encrypt(asciiArray.map(fix).mkString(""), shiftb, tempj)
       }
       else
       {
           var encrypted = asciiArray.map(fix).mkString("")
           println(encrypted)
           var x = 0
           decrypt(encrypted, shiftb, x)
           
       }
      
   }
   
   def decrypt(encryptOne: String, shiftc: Int, k: Int) //fix variables
   {
       
       var asciiEncrypt = encryptOne.toCharArray().map(ascii)
       var sizeofArray = asciiEncrypt.length
       
       if(asciiEncrypt(k) >= 97 & asciiEncrypt(k) <= 122)
       {
           var check = ((asciiEncrypt(k) - 97 - shiftc) % 26)
           
           if (check < 0) //same as javascript
           {
                check += 26;
               
           }
           asciiEncrypt(k) = check + 97;
           
       }
       
       var tempk = k + 1
       
       if(tempk < sizeofArray)
       {
           decrypt(asciiEncrypt.map(fix).mkString(""), shiftc, tempk)
       }
       else
       {
           var decrypted = asciiEncrypt.map(fix).mkString("")
           println(decrypted)
           
       }
      
   }
   
   
   
   
   def ascii(a: Char): Int = 
   {
       return a.toInt
   }
   def fix(b: Int): Char = 
   {
       return b.toChar
   }
}
