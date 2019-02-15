function result = z2(s,w,p,k,sig,T)
    part1 = (s.*(2*p*k-sig))./(2*sig*T);
    part2 = s.*w*(1-p^2)./T;
    result = part1 + part2;
end
