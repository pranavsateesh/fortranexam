program curve 
    implicit none
    real::r , potentialno , steps,dr, inumb ,a ,b ,total_steps,mid , potential, potdif
    open(1, file = 'data.txt')
    a = 1
    b = 8
    steps = (b-a)*100
    dr = 0.01
    r = a
    do inumb = 1,steps
        r = r+dr
        write(1,*)potential(r),r 
    end do
    total_steps = 30
    do inumb=1,total_steps
        mid=(a+b)/2
        if(potdif(a)*potdif(mid)<0) then
            b=mid
        elseif(potdif(mid)*potdif(b)<0) then
            a=mid
        end if
    end do
    print*,"The optimum distance is ",b
end program

function potential(r)
    implicit none
    real:: eps ,sigma , r , potential
    eps = 0.885
    sigma = 2.76
    potential = 4*eps*((sigma/r)**12 - (sigma/r)**6)
end 

function potdif(r)
    implicit none
    real::r,step , potdif, potential 
    step = 0.001
    potdif = (potential(r+step)-potential(r))/step
end 