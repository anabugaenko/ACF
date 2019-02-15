function result = z3(s,w,p,k,sig,T)
    part1 = (s.*p)./(sig*T);
    part2 = (w*(2*p*k-sig))/(2*sig);
    part3 = (w^2*(1-p^2))/2;
    result = part1+part2+part3;
end