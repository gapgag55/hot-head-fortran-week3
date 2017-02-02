program baconCode

integer :: index
integer :: binary = 0
integer :: adder = 1
integer :: choose
character(len=100) :: binary_string
character(len=100) :: output = " "
character(len=100) :: result = " "
character(len=100) :: str

integer :: i, j, f

character(100), dimension(26) :: baconCodes = (/'A', 'B', 'C', 'D', 'E', 'F', &
'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', &
'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' /)

print *, "Encode press: 1"
print *, "Decode press: 2"
read *, choose


! encrypt Code

if(choose .eq. 1) then

  print *, "Enter string (ABC): "
  read *, str

  do i = 1, len_trim(str)
    ! find index
    do j = 1, 26
      if(str(i:i) .eq. baconCodes(j)) then
        index = j - 1
        exit
      end if
    end do
    ! Index to binary
    ! Reset binary, adder when next character
    binary = 0
    adder = 1
    do while (index .ne. 0)
      if(mod(index, 2) .ne. 0) then
        binary = binary + adder ! 1
      end if

      index = index / 2
      adder = adder * 10
    end do

    ! Integer to String
    write(binary_string, "(I5)") binary

    ! binary to Bacon code
    output = " "
    do f = 1, 5
      if(binary_string(f:f) .eq. "1") then
        output = trim(output)//"A"
      else
        output = trim(output)//"a"
      end if
    end do

    ! Add white space between code
    result = trim(result)//" "//trim(output)

  end do

  ! Print outcome
  print *, result

! decode
else

  print *, "Enter decode (aaaaa aaaaA aaaAa): "
  read(*,'(A)') str

  adder = 10000
  index = 0

  ! Bacode to decimal
  do i = 1, len_trim(str), 6
    binary = 0

    do j = i, i+5
      ! 10,000, 1,000, 100, 10, 1
      ! 2^4, 2^3, 2^2, 2^1, 2^0
      if(str(j:j) .eq. "A") then
        binary = binary + (2**((i+4)-j))
      end if
      !
      adder = adder / 10
    end do

    ! Add white space between code
    result = trim(result)//trim(baconCodes(binary + 1))

  end do

  print *, result
end if

end program baconCode
