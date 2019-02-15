function [result] = a4(S0,r,k,theta,p,T,v0,sig)
    part1 = log(S0);
    part2 = p/sig*v0;
    part3 = (r-p*k*theta/sig)*T;
    result = part1-part2+part3;
end