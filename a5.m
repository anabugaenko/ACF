function [result] = a5(k,theta,T,v0,sig)
    result = (k*v0+k^2*theta*T)/sig^2;
end