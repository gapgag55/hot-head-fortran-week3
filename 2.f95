! Write a Fortran program to encrypt / decrypt a message by ising Bacon Code as shown in the example
! input: ABC
! output: aaaaa aaaaA aaaAa
! process: 00000 00001 00010

! concept: string -> binary -> Loop output Uppercase
! I think this is a bad way ==!!
program bacon

character(len=100)::str
character(len=100)::cliper
character(100), dimension(26, 2) :: baconCodes

baconCodes(1,1) = "A"
baconCodes(1,2) = "aaaaa"

baconCodes(2,1) = "B"
baconCodes(2,2) = "aaaaA"

baconCodes(3,1) = "C"
baconCodes(3,2) = "aaaAa"

baconCodes(4,1) = "D"
baconCodes(4,2) = "aaaAA"

baconCodes(5,1) = "E"
baconCodes(5,2) = "aaAaa"

baconCodes(6,1) = "F"
baconCodes(6,2) = "aaAaA"

baconCodes(7,1) = "G"
baconCodes(7,2) = "aaAAa"

baconCodes(8,1) = "H"
baconCodes(8,2) = "aaAAA"

baconCodes(9,1) = "I"
baconCodes(9,2) = "aAaaa"

baconCodes(10,1) = "J"
baconCodes(10,2) = "aAaaa"

baconCodes(11,1) = "K"
baconCodes(11,2) = "aAaaA"

baconCodes(12,1) = "L"
baconCodes(12,2) = "aAaAa"

baconCodes(13,1) = "M"
baconCodes(13,2) = "aAaAA"

baconCodes(14,1) = "N"
baconCodes(14,2) = "aAAaa"

baconCodes(15,1) = "O"
baconCodes(15,2) = "aAAaA"

baconCodes(16,1) = "P"
baconCodes(16,2) = "aAAAa"

baconCodes(17,1) = "Q"
baconCodes(17,2) = "aAAAA"

baconCodes(18,1) = "R"
baconCodes(18,2) = "Aaaaa"

baconCodes(19,1) = "S"
baconCodes(19,2) = "AaaaA"

baconCodes(20,1) = "T"
baconCodes(20,2) = "AaaAa"

baconCodes(21,1) = "U"
baconCodes(21,2) = "AaaAA"

baconCodes(22,1) = "V"
baconCodes(22,2) = "AaaAA"

baconCodes(23,1) = "W"
baconCodes(23,2) = "AaAaa"

baconCodes(24,1) = "X"
baconCodes(24,2) = "AaAaA"

baconCodes(25,1) = "Y"
baconCodes(25,2) = "AaAAa"

baconCodes(26,1) = "Z"
baconCodes(26,2) = "AaAAA"

cliper = " "


read *, str

do i = 1, len_trim(str)
  do j = 1, 25
    if(str(i:i) .eq. baconCodes(j,1)) then
      cliper = trim(cliper)//" "//baconCodes(j, 2)
    end if
  end do
end do

print *, cliper


! baconCodes(1,1) = "A"
! baconCodes(1,2) = "aaaaA"
!
! if(str(1:1) .eq. baconCodes(1,1)) then
!   print *, baconCodes(1,2)
! end if

end program bacon
