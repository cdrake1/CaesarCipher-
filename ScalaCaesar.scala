object CaesarSalad 
{
    def main(args: Array[String]) 
    {
      var test1 = "Bugs Bunny";
      var test2 = "The Broom Was Late to School Because he overSWEPT";
      var test3 = "Spaghetti and Meatballs";
      var shiftcypher = 7;
      
      println("Your string: " + test1)
      test1 = test1.toLowerCase
      println("Your string in lower case: " + test1)
      
      val cypher = encrypt(test1, shiftcypher)
      println("Your string encrypted: " + cypher)
      
      val decypher = decrypt(cypher, 26 - shiftcypher)
      println("Your string decrypted: " + decypher)
      
      solve(test1)
      
    }
    
    def encrypt(teststr:String, shiftcy:Int): String = {
        
        teststr.map 
        { i =>
          
          if (i >= 97 && i <= 122)
            ((i.toInt - 97 + shiftcy) % 26 + 97).toChar
          else
            i
        }
    
    }
    
    def decrypt(str:String, shiftback:Int): String = {
        
        str.map 
        { j =>
          
          if (j >= 97 && j <= 122)
            ((j.toInt - 97 + shiftback) % 26 + 97).toChar
          else
            j
            
        }
    
    }
    
    def solve(answer:String) {
        
        val shiftw = 1
        
        println("Your string Solved: ")
        println("Solve: " + answer)
        
        for (x <- 1 to 26) 
        {
            
            answer.map 
            { y =>
              
              if (y >= 97 && y <= 122)
                ((y.toInt - 97 + shiftw) % 26 + 97).toChar
              else
                y
                
            }
            
            println("Solve: " + answer)
			
		}
    
    }
    
    
   
}