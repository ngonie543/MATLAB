function f_out = aliasFunction(f_in,fs)
    
f_out = f_in;
    for n=1:length(f_in)
        while f_out(n) > fs/2
            f_out(n) = abs(f_out(n) - fs);
        end
end
