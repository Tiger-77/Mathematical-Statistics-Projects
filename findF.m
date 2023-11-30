function [beta,F,Q,c] = findF(X,y,p,n)
beta=(X'*X)\X'*y;
%下计算Q，从而得到sigma^2
Q=(y-X*beta)'*(y-X*beta);
sigma2=Q/(n-p-1);
%下计算cii
c=diag((X'*X)\eye(p+1));
%最后得到Fi并返回
F=beta(p+1)^2/(sigma2*c(p+1));
end

