module c_dftatom

use iso_c_binding, only: c_int, c_double, c_bool
use averages, only: arit, arit2
implicit none

contains

subroutine averages_arit(n_long, n_lat, longitude, latitude, field, mask, r) bind(c)
integer(c_int), intent(in), value :: n_long, n_lat
real(c_double), intent(in) :: longitude(n_long), latitude(n_lat), field(n_long, n_lat)
! mask == 0 is .false. and 1 is .true.
integer(c_int), intent(in) :: mask(n_long, n_lat)
real(c_double), intent(out) :: r
logical :: mask2(n_long, n_lat)
where (mask == 0)
    mask2 = .false.
else where
    mask2 = .true.
end where
r = arit(longitude, latitude, field, mask2)
end subroutine

subroutine averages_arit2(n_long, n_lat, longitude, latitude, field, mask, r) bind(c)
integer(c_int), intent(in), value :: n_long, n_lat
real(c_double), intent(in) :: longitude(n_long), latitude(n_lat), field(n_long, n_lat)
! mask == 0 is .false. and 1 is .true.
integer(c_int), intent(in) :: mask(n_long, n_lat)
real(c_double), intent(out) :: r
logical :: mask2(n_long, n_lat)
where (mask == 0)
    mask2 = .false.
else where
    mask2 = .true.
end where
r = arit2(longitude, latitude, field, mask2)
end subroutine

end module
