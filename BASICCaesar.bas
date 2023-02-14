
dim test1 as string 
dim test2 as string 
dim test3 as string 
dim answer as string
dim shiftcypher as integer
dim fixcypher as integer
dim totshift as integer
test1 = "Bugs Bunny"
test2 = "Hello World"
test3 = "Spaghetti and Meatballs"
shiftcypher = 7
totshift = 0
fixcypher = 26 - shiftcypher
dim i as integer
dim j as integer


print("Your string: " + test1)

for i = 0 to len(test1)
    if(test1[i] >= 65) and (test1[i] <= 90) then
         test1[i] = (test1[i]+32)
    end if
next
print("Your string in lowercase: " + test1)
answer = test1


for i = 0 to len(test1)
    if(test1[i] >= 97) and (test1[i] <= 122) then
         test1[i] = 97 + (test1[i] - 97 + shiftcypher) mod 26
    end if
next
print("This is your string encrypted: " + test1)

for i = 0 to len(test1)
    if(test1[i] >= 97) and (test1[i] <= 122) then
         test1[i] = 97 + (test1[i] - 97 + fixcypher) mod 26
    end if
next
print("This is your string decrypted: " + test1)


print("This is your string Solved: ")
for i = 1 to 26
    for j = 1 to len(answer)
        if(answer[i] >= 97) and (answer[i] <= 122) then
             answer[i] = 97 + (answer[i] - 97 + totshift) mod 26
        end if
    next
    print("Solve: " + answer)
    totshift += 1
next


