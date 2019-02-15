function [result] = a3(S0,r,k,theta,p,T,v0,sig)
    part1 = log(S0);
    part2 = (r*sig-k*theta*p)*T^2/2*sig*T;
    part3 = (p*T/sig*T)*v0;
    result = part1+part2-part3;
end