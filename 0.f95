! Hexadecimal to Octal
program H2O

integer :: A
print *, 'H2O: Enter HHexadecimal number'
read (*, 16) A
16 FORMAT(z3)

print *, 'The octal number is: '
print 8, A
8 FORMAT(O8)

end program H2O
