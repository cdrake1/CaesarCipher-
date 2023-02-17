! 
! Welcome to Programming In The Past assignment for Theory Of Programming Languages
! This is my fortran encrypt, decrpyt and solve Caesar Cipher
! Collin Drake
! Started January 20th 2023
!
!

Program caesarSalad
    implicit none
    
    character(len = 10) :: test1
    character(len = 25) :: test2
    character(len = 25) :: test3
    integer :: a
    
    ! want different strings with different upper and lowercase characters
    test1 = "BuGs BuNny"
    test2 = "Hello World"
    test3 = "Spaghetti and Meatballs"
    
    print *, 'This is your original statement: ', test1
    a = len(test1)
    

    
    call tolower(test1, a)
    call encrypt(test1, a)
    call decrypt(test1, a)
    call solve(test1, 26)

End Program caesarSalad


subroutine tolower(test, total)
    implicit none
        
    character(len = 10), intent(inout) :: test
    integer, intent(inout)  :: total
    integer :: b
        
    ! 65 - 90 in ascii is the alphabet in uppercase
    ! add 32 for it to become all lowercase
    do b = 1, total
        if((iachar(test(b:b))>=65) .and. (iachar(test(b:b))<=90)) then
            test(b:b) = char(iachar(test(b:b))+32)
        end if
    end do
        
    print *, 'This is your statement in lowercase: ', test
        
end subroutine tolower

subroutine encrypt(cypher, length)
    implicit none
    
    character(*), intent(inout)  :: cypher
    integer, intent(inout)  :: length
    integer :: c
    integer, parameter :: shiftcypher = 7
    
    !lowercase characters in ascii are from 97 - 122
    ! mod by 26 to make the alphabet wrap around
    do c = 1, length
        if((iachar(cypher(c:c))>=97) .and. (iachar(cypher(c:c))<=122)) then
            cypher(c:c) = char(mod(iachar(cypher(c:c)) - 97 + shiftcypher, 26) + 97) 
        end if
	   
	end do

    print *, 'This is your encrypted statement: ', cypher
    
end subroutine encrypt

subroutine decrypt(decypher, leng)
    implicit none
    
    character(*), intent(inout)  :: decypher
    integer, intent(inout)  :: leng
    integer :: d
    integer, parameter :: fixcypher = 19
    
    do d = 1, leng
	    if((iachar(decypher(d:d))>=97) .and. (iachar(decypher(d:d))<=122)) then
            decypher(d:d) = char(mod(iachar(decypher(d:d)) - 97 + fixcypher, 26) + 97) 
        end if
	end do
    
    print *, 'This is your decrypted statement: ', decypher
    
    
    
end subroutine decrypt

subroutine solve(answer, maximum)
    implicit none
    
    character(*), intent(inout)  :: answer
    integer, intent(in)  :: maximum
    integer :: x
    integer :: maxshift
    integer :: y
    integer :: z
    
    maxshift = 1
    y = len(answer)
    print *, 'This is your solve: '
    print *, answer

    ! shift 1 time each letter for 26 letters in the alphabet
    ! need a nested loop for this
    do x = 1, maximum
    
        do z = 1, y
    	    if((iachar(answer(z:z))>=97) .and. (iachar(answer(z:z))<=122)) then
                answer(z:z) = char(mod(iachar(answer(z:z)) - 97 + maxshift, 26) + 97) 
            end if
	    end do
        print *, answer
	end do
    
    
    
end subroutine solve