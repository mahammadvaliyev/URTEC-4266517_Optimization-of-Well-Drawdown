function [BHP]=generate_bhp_seq(times,step)
% times: 35/70
% steps: 150/200/250   250/300/350
BHP=[];
init=5000;
x=10000;
for i=1:times
    x=init-(i-1)*step;
    BHP=[BHP x];
end
BHP(BHP<=500)=500;
end

%BHP_150=generate_bhp_seq(70,150); EUR_150_soft=forward_EUR_grad(BHP_150,150);
%BHP_200=generate_bhp_seq(70,200); EUR_200_soft=forward_EUR_grad(BHP_200,200);
%BHP_250=generate_bhp_seq(70,250); EUR_250_soft=forward_EUR_grad(BHP_250,250);