function result = phi(v0,S0,sig,k,theta,s,w,p,T,n,r)
    part1 = -a1(v0,sig).*H_tilda(k,s,w,p,sig,T,n)./H(k,s,w,p,sig,T,n);
    part2 = a2(k,theta,sig).*log(H(k,s,w,p,sig,T,n));

    result = exp(part1-part2+a3(S0,r,k,theta,p,T,v0,sig).*s...
    +a4(S0,r,k,theta,p,T,v0,sig)*w+a5(k,theta,T,v0,sig));
end

