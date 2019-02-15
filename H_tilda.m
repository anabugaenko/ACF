function result = H_tilda(k,s,w,p,sig,T,n)
    f_1 = (k-z4(w,p,sig)*sig^2)*T/2;
    result = (f_1)*1/T;
    
    f_n = [0 0 1 f_1];
    for c = 2:n
        part1 = -(sig^2*T^2)/(2*c*(c-1));
        part2 = z1(s,p,T)*T^2*f_n(1);
        part3 = z2(s,w,p,k,sig,T)*T*f_n(2);
        part4 = (z3(s,w,p,k,sig,T)-(k^2)/(2*sig^2))*f_n(3);
        
        f_new = part1.*(part2+part3+part4);
        result = result+(c/T)*(f_new);
        
        %remove the first (oldest) element
        f_n(1) = [];
        %append the newest element
        f_n = [f_n f_new];
    end
end

