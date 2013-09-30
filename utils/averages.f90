module averages
use types, only: dp
use constants, only: pi

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
r = sum(field*w, mask=mask)
end function

end module
