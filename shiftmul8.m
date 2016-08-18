function [y1,y3,y5,y7]=shiftmul8(x0,x1,x2,x3,x4,x5,x6,x7)
b1=x0-x7;
b2=x1-x6;
b3=x2-x5;
b4=x3-x4;
    k1=  double(1);
    k2 = double(2);
    k3 = double(3);
    k4 = double(4);
    k5 = double(5);
    k6=  double(6);
    
    d1 = int16(b1);
    d2 = int16(b2);
    d3 = int16(b3);
    d4 = int16(b4);
    
    y1=bitsll(d1,k6)+bitsll(d1,k4)+bitsll(d1,k3)+b1+bitsll(d2,k6)+bitsll(d2,k3)+bitsll(d2,k1)+bitsll(d3,k5)+bitsll(d3,k4)+bitsll(d3,k1)+bitsll(d4,k4)+bitsll(d4,k1);
    
    y3=b2+bitsll(d1,k6)+bitsll(d1,k3)+bitsll(d1,k1)-b3-bitsll(d3,k6)-bitsll(d3,k4)-bitsll(d3,k3)-bitsll(d4,k5)-bitsll(d4,k4)-bitsll(d4,k1)-bitsll(d2,k4)-bitsll(d2,k1);
    
    y5=-b2-bitsll(d2,k6)-bitsll(d2,k4)-bitsll(d2,k3)+b4+bitsll(d4,k6)+bitsll(d4,k3)+bitsll(d4,k1)+bitsll(d1,k5)+bitsll(d1,k4)+bitsll(d1,k1)+bitsll(d3,k4)+bitsll(d3,k1);
    
    y7=-b4-bitsll(d4,k6)-bitsll(d4,k4)-bitsll(d4,k3)+b3+bitsll(d3,k6)+bitsll(d3,k3)+bitsll(d3,k1)-bitsll(d2,k5)-bitsll(d2,k4)-bitsll(d2,k1)+bitsll(d1,k4)+bitsll(d1,k1);