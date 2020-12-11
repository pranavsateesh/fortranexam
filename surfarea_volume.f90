program surfvol 
    real :: i, rad, pi, x,y ,saa,vola, san,voln,radius, estimate1,estimate2
    real::count,count2
    rad = 2
    pi = 3.1415
    saa = 4.0*pi*(rad**2)
    vol = 4.0/3.0*pi*(rad**3) 
    count = 0 
    count2 = 0
    error = 0.5
    do i=1,1000000
    xrand = 0+2*rand()
    yrand = 0+2*rand()
    zrand = 0+2*rand()
    radius = sqrt((xrand**2)+(yrand**2)+(zrand**2))
    if (radius .LE. rad) then 
    count = count +1
    end if
    if (radius .LE. rad+error) then 
        if (radius .GE. rad-error) then
            count2 = count2 +1
        end if
    end if     
end do
    print*,count2
    estimate2=(4*(rad**2)*count2)/1000000 
    estimate1=(8*(rad**3)*count)/1000000
    print*,estimate1,estimate2,saa,vol
end program