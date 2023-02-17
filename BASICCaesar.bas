
dim test1 as string 
dim test2 as string 
dim test3 as string 
dim answer as string
dim shiftcipher as integer
dim fixcipher as integer
dim totshift as integer
test1 = "Bugs Bunny"
test2 = "Hello World"
test3 = "Spaghetti and Meatballs"
shiftcipher = 7
totshift = 1
fixcipher = 26 - shiftcipher
dim i as integer
dim j as integer


print("Your string: " + test1)

for i = 0 to len(test1)
    if(test1[i] >= 65) and (test1[i] <= 90) then
         test1[i] = (test1[i]+32)
    end if
next
print("Your string in lowercase: " + test1)


for i = 0 to len(test1)
    if(test1[i] >= 97) and (test1[i] <= 122) then
         test1[i] = 97 + (test1[i] - 97 + shiftcipher) mod 26
    end if
next
print("This is your string encrypted: " + test1)

for i = 0 to len(test1)
    if(test1[i] >= 97) and (test1[i] <= 122) then
         test1[i] = 97 + (test1[i] - 97 + fixcipher) mod 26
    end if
next
print("This is your string decrypted: " + test1)


print("This is your string Solved: ")
print("Solve: " + test1)
for i = 1 to 26
    for j = 0 to len(test1)
        if(test1[j] >= 97) and (test1[j] <= 122) then
             test1[j] = 97 + (test1[j] - 97 + totshift) mod 26
        end if
    next
    print("Solve: " + test1)
next


