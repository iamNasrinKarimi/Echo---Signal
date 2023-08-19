function result=echo4000(sig,fs)
 new_sig=filter(1,[1 zeros(1,(fs/2)-1) -0.5],sig);
 result=new_sig;

end