module gauss

implicit none

contains
      

! -------------------------------------------------------------------
! Fills supplied arrays with points and weights for Gauss quadrature.
!
! n   - number of quadrature points
! X   - coordinates of quadrature points
! W   - weights
!
! Note: n-point Gauss quadrature yields exact results for polynomials
! of degree up to 2n - 1.
! -------------------------------------------------------------------
subroutine GaussRule(n, X, W)
integer(kind=4), intent(in)  :: n
real   (kind=8), intent(out) :: X(0:n-1)
real   (kind=8), intent(out) :: W(0:n-1)

  select case (n)
  case (1) ! p = 1
    X(0) = 0.0
    W(0) = 2.0
  case (2) ! p = 3
    X(0) = -0.5773502691896257645091487805019576 ! 1/sqrt(3)
    X(1) = -X(0)
    W(0) =  1.0
    W(1) =  W(0)
  case (3) ! p = 5
    X(0) = -0.7745966692414833770358530799564799 ! sqrt(3/5)
    X(1) =  0.0
    X(2) = -X(0)
    W(0) =  0.5555555555555555555555555555555556 ! 5/9
    W(1) =  0.8888888888888888888888888888888889 ! 8/9
    W(2) =  W(0)
  case (4) ! p = 7
    X(0) = -0.8611363115940525752239464888928094 ! sqrt((3+2*sqrt(6/5))/7)
    X(1) = -0.3399810435848562648026657591032448 ! sqrt((3-2*sqrt(6/5))/7)
    X(2) = -X(1)
    X(3) = -X(0)
    W(0) =  0.3478548451374538573730639492219994 ! (18-sqrt(30))/36
    W(1) =  0.6521451548625461426269360507780006 ! (18+sqrt(30))/36
    W(2) =  W(1)
    W(3) =  W(0)
  case (5) ! p = 9
    X(0) = -0.9061798459386639927976268782993929 ! 1/3*sqrt(5+2*sqrt(10/7))
    X(1) = -0.5384693101056830910363144207002086 ! 1/3*sqrt(5-2*sqrt(10/7))
    X(2) =  0.0
    X(3) = -X(1)
    X(4) = -X(0)
    W(0) =  0.2369268850561890875142640407199173 ! (322-13*sqrt(70))/900
    W(1) =  0.4786286704993664680412915148356382 ! (322+13*sqrt(70))/900
    W(2) =  0.5688888888888888888888888888888889 ! 128/225
    W(3) =  W(1)
    W(4) =  W(0)
  case (6)
    X(0) = -0.9324695142031520
    X(1) = -0.6612093864662645
    X(2) = -0.2386191860831969
    X(3) = -X(2)
    X(4) = -X(1)
    X(5) = -X(0)
    W(0) =  0.1713244923791703
    W(1) =  0.3607615730481386
    W(2) =  0.4679139345726911
    W(3) =  W(2)
    W(4) =  W(1)
    W(5) =  W(0)
  case (7)
    X(0) = -0.9491079123427585
    X(1) = -0.7415311855993944
    X(2) = -0.4058451513773972
    X(3) =  0.0
    X(4) = -X(2)
    X(5) = -X(1)
    X(6) = -X(0)
    W(0) =  0.1294849661688697
    W(1) =  0.2797053914892767
    W(2) =  0.3818300505051189
    W(3) =  0.4179591836734694
    W(4) =  W(2)
    W(5) =  W(1)
    W(6) =  W(0)
  case (8)
    X(0) = -0.9602898564975362
    X(1) = -0.7966664774136267
    X(2) = -0.5255324099163290
    X(3) = -0.1834346424956498
    X(4) = -X(3)
    X(5) = -X(2)
    X(6) = -X(1)
    X(7) = -X(0)
    W(0) =  0.1012285362903763
    W(1) =  0.2223810344533745
    W(2) =  0.3137066458778873
    W(3) =  0.3626837833783620
    W(4) =  W(3)
    W(5) =  W(2)
    W(6) =  W(1)
    W(7) =  W(0)
  case (9)
    X(0) = -0.9681602395076261
    X(1) = -0.8360311073266358
    X(2) = -0.6133714327005904
    X(3) = -0.3242534234038089
    X(4) =  0.0
    X(5) = -X(3)
    X(6) = -X(2)
    X(7) = -X(1)
    X(8) = -X(0)
    W(0) =  0.0812743883615744
    W(1) =  0.1806481606948574
    W(2) =  0.2606106964029354
    W(3) =  0.3123470770400029
    W(4) =  0.3302393550012598
    W(5) =  W(3)
    W(6) =  W(2)
    W(7) =  W(1)
    W(8) =  W(0)
  case (10)
    X(0) = -0.973906528517172
    X(1) = -0.865063366688985
    X(2) = -0.679409568299024
    X(3) = -0.433395394129247
    X(4) = -0.148874338981631
    X(5) = -X(4)
    X(6) = -X(3)
    X(7) = -X(2)
    X(8) = -X(1)
    X(9) = -X(0)
    W(0) =  0.066671344308688
    W(1) =  0.149451349150581
    W(2) =  0.219086362515982
    W(3) =  0.269266719309996
    W(4) =  0.295524224714753
    W(5) =  W(4)
    W(6) =  W(3)
    W(7) =  W(2)
    W(8) =  W(1)
    W(9) =  W(0)
  case default
    X = 0.0
    W = 0.0
  end select

end subroutine
      
end module


