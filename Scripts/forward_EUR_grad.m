function [EUR] = forward_EUR_grad(bhp_norm,counter_var)
warning('off')
% make sure bhp is a row vector
bhp_norm=reshape(bhp_norm,[1,length(bhp_norm)]);
modelfile = 'BHP_Opt_Proxy_AR_50.h5';
net = importKerasNetwork(modelfile);
prediction=predict(net,bhp_norm);
prediction(prediction<0)=0;
%prediction(prediction>1)=1;

% denormalize
y_max=293938;
y_min=30933;
s=prediction(19)*(y_max-y_min)+y_min;
EUR=-s;

end