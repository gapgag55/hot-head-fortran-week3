! Develop a Fortran program to receive Hexadecimal input and print Binary output
program H2B

integer :: A
print *, 'H2O: Enter HHexadecimal number'
read (*, 16) A
16 FORMAT(z3)

print *, 'The Binary number is: '
print 2, A
2 FORMAT(b16)

end program H2B
