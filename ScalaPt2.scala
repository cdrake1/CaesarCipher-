object CaesarCipher
{
   def main(args: Array[String])
   {
      var testString = "Bugs Bunny"
      testString = testString.toLowerCase() //make string lowercase
      var shifta = 7
      var i = 0
     
      println(testString)
     
      Encrypt(testString, shifta, i) //call encrypt function
     
      //good

   }
   
   def Encrypt(testOne: String, shiftb: Int, j: Int)
   {
       var asciiArray = testOne.toCharArray().map(ascii)
       var sizeOne = asciiArray.length
       
       if(asciiArray(j) >= 97 & asciiArray(j) <= 122)
       {
           asciiArray(j) = ((asciiArray(j) - 97 + shiftb) % 26) + 97
           
       }
       
       var tempj = j + 1
       
       if(tempj < sizeOne)
       {
           Encrypt(asciiArray.map(fix).mkString(""), shiftb, tempj)
       }
       else
       {
           var encrypted = asciiArray.map(fix).mkString("")
           println(encrypted)
           var x = 0
           Decrypt(encrypted, shiftb, x)
           
       }
     
   }
   
   def Decrypt(encryptOne: String, shiftc: Int, k: Int) //fix variables
   {
       
       var asciiEncrypt = encryptOne.toCharArray().map(ascii)
       var sizeTwo = asciiEncrypt.length
       
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
       
       if(tempk < sizeTwo)
       {
           Decrypt(asciiEncrypt.map(fix).mkString(""), shiftc, tempk)
       }
       else
       {
           var decrypted = asciiEncrypt.map(fix).mkString("")
           println(decrypted)
           tempk = 0
           //call solve here
           Solve(decrypted, 1, tempk)
           
       }
     
   }
   
   def Solve(solveString: String, maxShift: Int, l: Int )
   {
        if(maxShift <= 26)
        {
            var solve = solveString.toCharArray().map(ascii)
            var sizeSolve = solve.length
            if(solve(l) >= 97 & solve(l) <= 122)
            {
               solve(l) = ((solve(l) - 97 + 1) % 26) + 97
               
            }
           
            var templ = l + 1
           
            if(templ < sizeSolve)
            {
               Solve(solve.map(fix).mkString(""), maxShift, templ)
            }
            else
            {
               var solved = solve.map(fix).mkString("")
               println(solved)
               var z = 1
               var maxShifttemp = maxShift + 1
               var again = solved
               Solve(again, maxShifttemp, 0)
               
            }
           
           
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