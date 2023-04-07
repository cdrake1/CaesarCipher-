object CaesarCipher
{
   def main(args: Array[String])
   {
      var testString = "Bugs Bunny" //test strings
      var testTwo = "Speghetti and Meatballs"
      var testThree = "Anakin Skywalker"
      testString = testString.toLowerCase() //make string lowercase
      var shifta = 7
      var i = 0
     
      println(testString)
     
      Encrypt(testString, shifta, i) //call encrypt function
     

   }
   
   def Encrypt(testOne: String, shiftb: Int, j: Int)
   {
       var asciiArray = testOne.toCharArray().map(ascii)
       var sizeOne = asciiArray.length
       
       if(asciiArray(j) >= 97 & asciiArray(j) <= 122) //check if lowercase
       {
           asciiArray(j) = ((asciiArray(j) - 97 + shiftb) % 26) + 97 //shift and wrap alphabet
           
       }
       
       var tempj = j + 1 // shift to next letter
       
       if(tempj < sizeOne) //check if looped through the whole string
       {
           Encrypt(asciiArray.map(fix).mkString(""), shiftb, tempj) //recursively call itself
       }
       else
       {
           var encrypted = asciiArray.map(fix).mkString("")
           println(encrypted)
           var x = 0
           Decrypt(encrypted, shiftb, x) //call decrypt
           
       }
     
   }
   
   def Decrypt(encryptOne: String, shiftc: Int, k: Int) //fix variables
   {
       
       var asciiEncrypt = encryptOne.toCharArray().map(ascii)
       var sizeTwo = asciiEncrypt.length
       
       if(asciiEncrypt(k) >= 97 & asciiEncrypt(k) <= 122) //same as encrypt
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
           Decrypt(asciiEncrypt.map(fix).mkString(""), shiftc, tempk) //recursively call itself
       }
       else
       {
           var decrypted = asciiEncrypt.map(fix).mkString("")
           println(decrypted)
           tempk = 0
           Solve(decrypted, 1, tempk) //call solve
           
       }
     
   }
   
   def Solve(solveString: String, maxShift: Int, l: Int )
   {
        if(maxShift <= 26) //check if through for 26 letters of alphabet
        {
            var solve = solveString.toCharArray().map(ascii)
            var sizeSolve = solve.length
            if(solve(l) >= 97 & solve(l) <= 122) //lowercase?
            {
               solve(l) = ((solve(l) - 97 + 1) % 26) + 97 //shift and wrap
               
            }
           
            var templ = l + 1
           
            if(templ < sizeSolve)
            {
               Solve(solve.map(fix).mkString(""), maxShift, templ) //call for each letter of string
            }
            else
            {
               var solved = solve.map(fix).mkString("")
               println(solved)
               var z = 1
               var maxShifttemp = maxShift + 1
               var again = solved
               Solve(again, maxShifttemp, 0) //call for each shift amount
               
            }
           
           
        }
   }

   
   def ascii(a: Char): Int = //function to change to ascii
   {
       return a.toInt
   }
   def fix(b: Int): Char = //function to change back to character
   {
       return b.toChar
   }
}