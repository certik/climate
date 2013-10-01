module averages
use types, only: dp
use constants, only: pi
implicit none
private
public arit, arit2, rmean

contains

real(dp) function arit(longitude, latitude, field, mask) result(r)
! field is (long, lat), mask is the same shape,
! only .true. elements will be considered
! longitude is [-180, 180], latitude is [-90, 90]
real(dp), intent(in) :: longitude(:), latitude(:), field(:, :)
logical, intent(in) :: mask(:, :)
real(dp) :: w(size(field, 1), size(field, 2))
w = spread(cos(latitude*pi/180), 1, size(longitude))
w = w / sum(w)
r = sum(field*w, mask=mask) / sum(w, mask=mask)
end function

real(dp) function rmean(longitude, latitude, field, mask, r) result(m)
! field is (long, lat), mask is the same shape,
! only .true. elements will be considered
! longitude is [-180, 180], latitude is [-90, 90]
real(dp), intent(in) :: longitude(:), latitude(:), field(:, :)
logical, intent(in) :: mask(:, :)
real(dp), intent(in) :: r
real(dp) :: w(size(field, 1), size(field, 2))
w = spread(cos(latitude*pi/180), 1, size(longitude))
w = w / sum(w)
m = (sum(field**r * w, mask=mask) / sum(w, mask=mask))**(1/r)
end function

real(dp) function arit2(longitude, latitude, field, mask) result(r)
! field is (long, lat), mask is the same shape,
! only .true. elements will be considered
! longitude is [-180, 180], latitude is [-90, 90]
real(dp), intent(in) :: longitude(:), latitude(:), field(:, :)
logical, intent(in) :: mask(:, :)
real(dp) :: tmp(size(mask, 2)), w(size(mask, 2))
integer :: tmp2(size(mask, 1)), n
logical :: tmp_mask(size(mask, 2))
integer :: i
w = sin(pi/144) * cos(latitude*pi/180)
tmp2 = 1
do i = 1, size(field, 2)
    n = sum(tmp2, mask=mask(:, i))
    if (n == 0) then
        tmp_mask(i) = .false.
    else
        tmp(i) = sum(field(:, i), mask=mask(:, i)) / n
        tmp_mask(i) = .true.
    end if
end do
r = sum(tmp*w, mask=tmp_mask) / sum(w, mask=tmp_mask)
end function

end module
