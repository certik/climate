module c_dftatom

use iso_c_binding, only: c_int, c_double, c_bool
use averages, only: arit
implicit none

contains

subroutine averages_arit(n_long, n_lat, longitude, latitude, field, mask, r) bind(c)
integer(c_int), intent(in), value :: n_long, n_lat
real(c_double), intent(in) :: longitude(n_long), latitude(n_lat), field(n_long, n_lat)
logical(c_bool), intent(in) :: mask(n_long, n_lat)
real(c_double), intent(out) :: r
! We need to retype this, so that it compiles:
logical :: mask2(n_long, n_lat)
mask2 = mask
r = arit(longitude, latitude, field, mask2)
end subroutine

end module
