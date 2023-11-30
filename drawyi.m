
finalX=[X(:,1),X(:,2),X(:,4),X(:,7)];
finalbeta=(finalX'*finalX)\finalX'*y;
ty=(finalX*finalbeta);%(20*1)
Q=(y-ty)'*(y-ty);
ypj=1/20*y'*ones(20,1);
ypj=ypj.*ones(20,1);
Lyy=(y-ypj)'*(y-ypj);
R2=1-Q/Lyy;

heng=[2002:1:2021];

h1=plot(heng,ty,'r');
hold on
h2=plot(heng,y,'g');

title('2002年-2021年财政收入折线图')
xlabel('年份');ylabel('财政收入')
legend([h1,h2],'y^','y')