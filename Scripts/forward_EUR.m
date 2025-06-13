function [EUR,gradient] = forward_EUR(bhp_norm)

[EUR,grad]=gradient_eff(bhp_norm);
gradient=grad/norm(grad);

end