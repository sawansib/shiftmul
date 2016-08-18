function [Y1 Y3] = shiftmul(data1,data2)
coder.extrinsic('decimalToBinaryVector','binaryVectorToDecimal');
    bin=decimalToBinaryVector(data1,16);
    b1=bin([6+1:end 1:6]);
    b2=bin([4+1:end 1:4]);
    b3=bin([1+1:end 1:1]);
    Bn1=data1+binaryVectorToDecimal(b1)+binaryVectorToDecimal(b2)+binaryVectorToDecimal(b3);
    
    bin=decimalToBinaryVector(data2,16);
    b11=bin([5+1:end 1:5]);
    %b2=circshift(bin,4);
    b13=bin([1+1:end 1:1]);
    Bn2=binaryVectorToDecimal(b11)+binaryVectorToDecimal(b13);
    Y1=Bn1+Bn2;
    
    bin=decimalToBinaryVector(data1,16);
    b111=bin([5+1:end 1:5]);
    %b2=circshift(bin,4);
    b113=bin([1+1:end 1:1]);
    Bn12=binaryVectorToDecimal(b111)+binaryVectorToDecimal(b113);
 
    
    bin=decimalToBinaryVector(data2,16);
    b1111=bin([6+1:end 1:6]);
    b1112=bin([4+1:end 1:4]);
    b1113=bin([1+1:end 1:1]);
    Bn11=data1+binaryVectorToDecimal(b1111)+binaryVectorToDecimal(b1112)+binaryVectorToDecimal(b1113);
    Y3=Bn12-Bn11;
    
end
