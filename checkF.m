function [mini,minF] = checkF(beta,Q,c,n,p)
sigma2=Q/(n-p-1);
minF=999;
mini=0;
for i=2:p
    tempf=beta(i)^2/(sigma2*c(i));
    if tempf<minF
        minF=tempf;
        mini=i;
    end
end
end

