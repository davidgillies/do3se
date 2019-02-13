module utils
    implicit none

    REAL, parameter :: UNDEF = -999.0
    INTEGER, parameter :: IUNDEF = -999
    interface is_def
        module procedure is_def_real
        module procedure is_def_integer
    end interface is_def
    public :: is_def

    interface is_undef
        module procedure is_undef_real
        module procedure is_undef_integer
    end interface is_undef
    public :: is_undef
contains


    pure elemental logical function is_def_real(x)
        real, intent(in) :: x

        is_def_real = x > UNDEF
    end function is_def_real

    pure elemental logical function is_def_integer(x)
        integer, intent(in) :: x

        is_def_integer = x /= IUNDEF
    end function is_def_integer


    pure elemental logical function is_undef_real(x)
        real, intent(in) :: x

        is_undef_real = x <= UNDEF
    end function is_undef_real

    pure elemental logical function is_undef_integer(x)
        integer, intent(in) :: x

        is_undef_integer = x == IUNDEF
    end function is_undef_integer

end module
