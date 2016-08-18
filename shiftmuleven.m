function [Y0 Y1]=shiftmuleven(b1,b2)
Y0=64*b1+64*b2;
Y1=64*b1-64*b2;
end