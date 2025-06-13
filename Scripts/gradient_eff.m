function [EUR,gradient] = gradient_eff(bhp_norm)
% Gradient function: Input: bhp, output: gradient

forward_sim=zeros(1,length(bhp_norm)+1);
gradient=zeros(1,length(bhp_norm));
n_var=length(bhp_norm);
dx=0.05;
dummy=zeros(n_var+1,n_var);

for i=1:n_var+1
    if i==1
        dummy(i,:)=0;
    else
        dummy(i,i-1)=dx;
    end
end

% parfor
parfor i=1:n_var+1
    forward_sim(1,i)=forward_EUR_grad(bhp_norm+dummy(i,:),i); % f(x+dx) try and except
end
% parfor
parfor i=1:n_var
    gradient(1,i)=(forward_sim(1,i+1)-forward_sim(1,1))/dx;
end
EUR=forward_sim(1,1);
a=rand;
save(num2str(a),"a")
end