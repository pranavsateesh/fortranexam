program surfvol 
    real :: i, rad, pi, x,y ,saa,vola, san,voln,radius, estimate1,estimate2
    real::count,count2
    rad = 2
    pi = 3.1415
    saa = 4.0*pi*(rad**2)
    vol = 4.0*pi*(rad**3) 
    do i=1,10000
    xrand = 2+4*rand()
    yrand = 2+4*rand()
    zrand = 2+4*rand()
    radius = (x**2) + (y**2) + (z**2)
    if (radius .LE. rad**2) then 
    count = count +1
    if (radius .EQ. rad**2) then 
        count2 = count2 +1
    end if
    end if    
end do
    estimate2=((6*rad**2)*count)/10000 
    estimate1=((2*rad**3)*count)/10000
    print*,estimate1,estimate1,saa,vol
end program