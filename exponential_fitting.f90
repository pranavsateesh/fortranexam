program exponential_fit
    real:: n,inumb ,a1,a2,a3,a4,a5,a6,b1,a,b 
    real, dimension(12,12)::points
    n = 12 
    points(1,1) = 0.0
    points(1,2) = 0.5
    points(1,3) = 1.0
    points(1,4) = 1.5
    points(1,5) = 2.0
    points(1,6) = 2.5
    points(1,7) = 3.0
    points(1,8) = 3.5
    points(1,9) = 4.0
    points(1,10) = 4.5
    points(1,11) = 5.0
    points(1,12) = 5.5

    points(2,1) = 1.000
    points(2,2) = 0.994
    points(2,3) = 0.990
    points(2,4) = 0.985
    points(2,5) = 0.979
    points(2,6) = 0.977
    points(2,7) = 0.972
    points(2,8) = 0.969
    points(2,9) = 0.967
    points(2,10) = 0.960
    points(2,11) = 0.956
    points(2,12) = 0.952    
    do inumb= 1,n
        a1 = 0 
        a2 = 0
        a3 = 0 
        a4 = 0
        a5 = 0 
        a6 = 0  
        a1 = a1 + log(points(2,inumb))
        a2 = a2 + points(1,inumb)**2
        a3 = a3 + points(1,inumb)
        a4 = a4 + points(1,inumb)*log(points(2,inumb))
        a5 = a5 + points(1,inumb)**2
        a6 = a6 + points(1,inumb)
        b1 = 0 
        b1 = b1 + points(1,inumb)*log(points(2,inumb))
    end do 
a = (a1*a2 - a3*a4)/(n*(a5) - (a6)**2)
b = (n*(b1) - a3*a1)/(n*(a5) - (a6)**2)
write(*,*)a,b
write(*,*) log(2.00)/b
end program 