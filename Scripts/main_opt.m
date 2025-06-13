clc;
fclose('all');
clear
rng(17)
n_var=19;

% additional
history= histclass;
outf= @(x,optimValues,state)outfun3(x,optimValues,state,history);
%x_init= ones(1,n_var)*2500;
%x_init= ones(1,n_var)*0.5;
load('x0250.mat')
%x0=x00-0.001;
%x0(x0<0)=0;
%load('x_hard.mat')
%x0=x_hard;
for i=1:18
    A(i,i)=-1;
    A(i,i+1)=1;
end
b=zeros(18,1)+0.065;

bhp_max=5000;
bhp_min=500;
x_init= (x0250-bhp_min)/(bhp_max-bhp_min);
%x_init=x0250;
x_init(x_init<0)=0;
var_num = length(x_init);
lb = zeros(1,var_num)-0.001; %500
ub = ones(1,var_num)+0.001;         %3000  /3000
     %'SpecifyObjectiveGradient',true,'Display','iter-detailed',...  
      %   'UseParallel',true,...
      
options = optimoptions('fmincon','Algorithm','interior-point',... 
    'SpecifyObjectiveGradient',true,'Display','iter-detailed',... 
    'MaxIter',300,...      
    'OutputFcn',outf,... %%
    'FunValCheck','off',...                                   
    'Hessian','off',...
    'UseParallel',true,...
    'Diagnostics','on',...
    'TolFun',1e-5, 'TolX', 1e-5,'TolCon', 1e-4); % Step Tolerance, TolX-10e-6; TolFun - 1st order optimality tol
%'UseParallel',true
%
tic
[x,fval,exitflag,output,lambda,grad,hessian] = fmincon(@(x)forward_EUR(x),x_init,A,b,...
    [],[],lb,ub,[],options);
toc
save('x','x')
save('history','history')