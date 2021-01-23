%program to solve problems using weddle rule
 clc;
 fx=@(x)1./(1+x.^2); 
 a=input('Enter the lower limit:'); 
 b=input('Enter the upper limit:');  
 n=input('Enter the total number of sub-intervals:'); 
 h=(b-a)/n;
 k1=n/6;
 k=floor(k1);
 
 summa=0;
 if rem(n,6)==0   
 for i=1:1:k
    summa=summa+((3*h/10)*(fx(a)+fx(a+2*h)+5*fx(a+h)+6*fx(a+3*h)+fx(a+4*h)+5*fx(a+5*h)+fx(a+6*h)));  
     a=a+6*h;  
 end
fprintf('The value of integration is %f\n',summa);
 else 
     fprintf('Sorry !! Sub-interval should be multiple of 6\n');
 end