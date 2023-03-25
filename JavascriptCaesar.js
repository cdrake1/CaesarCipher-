
function CaesarCipher()
{
	var testString = "Bugs Bunny";
	var shifta = 7;
	testString = testString.toLowerCase();  //make string lower case
	print(testString);
	var encryptOne = testString.split("").map(ascii);
	var i = 0;
	Encrypt(encryptOne, shifta, testString, i); //call encrypt function

}

function Encrypt(testOne, shiftb, originalString, j)
{
    var L = originalString.length
    
    if(testOne[j] >= 97 && testOne[j] <= 122)
    {
        testOne[j] = ((testOne[j] - 97 + shiftb) % 26) + 97; 
    }
    
    j = j+1;
    
    if(j < L)
    {
        Encrypt(testOne, shiftb, originalString, j);
    }
    else
    {
        var encryptedOne = testOne.map(fix).join("");
        print(encryptedOne);
        j = 0;
        Decrypt(testOne, shiftb, originalString, j, L);
    }
    
    
}

function Decrypt(testTwo, shiftc, StringLe, k, Le)
{   
    if (testTwo[k] >= 97 && testTwo[k] <= 122) 
    {
        var check = (testTwo[k] - 97 - shiftc) % 26;
        if (check < 0) 
        {
            check += 26;
        }
        testTwo[k] = check + 97; 
    }

    
    k = k+1;
    
    if(k < Le)
    {
        Decrypt(testTwo, shiftc, StringLe, k, Le);
    }
    else
    {
        var decrypted = testTwo.map(fix).join("");
        print(decrypted);
        
    }
    
    
}

function Solve()

function ascii (a) //returns ascii value of character at spot a
{ return a.charCodeAt(0); }

function fix (b) //returns character value of ascii at spot b
{   var x = String.fromCharCode(b);
    return x 
    
}

CaesarCipher()