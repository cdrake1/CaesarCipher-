function CaesarCipher()
{
      var testString = "Bugs Bunny";
      var shifta = 7;
      var i = 0;
      
      testString = testString.toLowerCase();  //make string lower case
      print("Original String: ", testString);
      var encryptOne = testString.split("").map(ascii); //make string into array of ascii
      Encrypt(encryptOne, shifta, testString, i); //call encrypt function

}

function Encrypt(testOne, shiftb, originalString, j)
{
    var L = originalString.length
   
    if(testOne[j] >= 97 && testOne[j] <= 122) //check if between 97 and 122
    {
        testOne[j] = ((testOne[j] - 97 + shiftb) % 26) + 97; //shift and wrap alphabet
    }
   
    j = j+1; //increase counter
   
    if(j < L)
    {
        Encrypt(testOne, shiftb, originalString, j);  //recursively call encrypt
    }
    else
    {
        var encryptedOne = testOne.map(fix).join("");  //set it back to string
        print("Encrypted String: ", encryptedOne);
        j = 0;
        Decrypt(testOne, shiftb, originalString, j, L);  //call decrypt
        Solve(testOne, 1, j, L, 1);
    }
   
   
}

function Decrypt(testTwo, shiftc, StringLe, k, Le)
{  
    if (testTwo[k] >= 97 && testTwo[k] <= 122)
    {
        var check = (testTwo[k] - 97 - shiftc) % 26;
       
        if (check < 0) //javascript has this weird thing where if you're modding a negative it just sets it to itself so this is a fix for that
        {
            check += 26;
        }
        testTwo[k] = check + 97;
       
    }

   
    k = k+1;  //increase counter
   
    if(k < Le)
    {
        Decrypt(testTwo, shiftc, StringLe, k, Le);  //recursively call itself
    }
    else
    {
        var decrypted = testTwo.map(fix).join("");  //set back to string
        print("Decrypted String: ", decrypted);
    }
   
   
}


function Solve(final, maxShift, l, len, shiftd)
{
    if(maxShift <= 26)  // modified condition
    {
        if(final[l] >= 97 && final[l] <= 122) //check if between 97 and 122
        {
            final[l] = ((final[l] - 97 + shiftd) % 26) + 97; //shift and wrap alphabet
        }
   
        l += 1; //increase counter
   
        if(l < len)
        {
            Solve(final, maxShift, l, len, shiftd);  //recursively call encrypt
        }
        else
        {
            var solved = final.map(fix).join("");
            print("Solve: ", solved);
            maxShift += 1;
            l = 0;
            var again = solved.split("").map(ascii);
            Solve(again, maxShift, l, len, shiftd);
           
        }
       
    }  
}


function ascii (a) //returns ascii value of character at spot a
{ return a.charCodeAt(0); }

function fix (b) //returns character value of ascii at spot b
{   var x = String.fromCharCode(b);
    return x
   
}

CaesarCipher()