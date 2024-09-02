function dx = OBV_SLT(t,x,z)

m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;


dx = zeros(4,1);

dx(1) = x(3);
dx(2) = x(4);
dx(3) = (1/m1)*(f-b1*x(3)+b1*x(4)-k1*x(1)+k1*x(2));
dx(4) = (1/m2)*(-f+k2*z+b1*x(3)-b1*x(4)+k1*x(1)-(k1+k2)*x(2));