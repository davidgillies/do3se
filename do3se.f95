module do3se_ml

    implicit none
    public

contains
! need to do some initialization which will be different based on case
! will inputs/outputs for different subroutines be different and require different checks?


    subroutine m_yearly() ! run based on a year's data

    end subroutine

    subroutine m_single_run() ! a single hour or time period

    end subroutine

    subroutine multi_run() ! run based on multiple combos of parameters/inputs etc.

    end subroutine

    subroutine m_custom_run() ! where you can replace subroutine calls with your own.

    end subroutine


    subroutine p_yearly() ! run based on a year's data

    end subroutine

    subroutine p_single_run() ! a single hour or time period

    end subroutine

    subroutine p_custom_run() ! where you can replace subroutine calls with your own.

    end subroutine


end module
