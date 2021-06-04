function ycor = QuadraticSpline(x, y, xcor)

l = length(x); 
n = l-1;
m = zeros(3*n);
b = zeros(3*n,1);

j=1;
for i = 1:2:2*n
    m(i,j) = x(j)^2;
    m(i,j+n) = x(j);
    m(i,j+2*n) = 1;
    b(i) = y(j);
    
    m(i+1,j) = x(j+1)^2;
    m(i+1,j+n) = x(j+1);
    m(i+1,j+2*n) = 1;
    b(i+1) = y(j+1);
    
    j = j+1;
endfor

j=1;
i = i+2;

for k = 1:n-1
    m(i,j) = 2*x(j+1);
    m(i,j+1) = -2*x(j+1);
    m(i,j+n) = 1;
    m(i,j+n+1) = -1;
    j = j+1;
    i = i+1;
endfor

m(end,1) = 1;

co = m\b;

for j=1:length(xcor)
    
    for i=2:length(x)
        if xcor(j) <= x(i)
            i = i-1;
            break;
        endif
    endfor

    ycor(j) = co(i) * xcor(j)^2 + co(i+n) * xcor(j) + co(i+2*n);
    
endfor

end
