%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WELCOME%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%remove echo of audio file
%Signal System 99/3/17
function result=invEcho(sig,Fs,f1,f2)
  new_sig=filter([1 zeros(1,(Fs/2)-1) -f1 zeros(1,(Fs/2)-1) -f2],1,sig);
  %using filter
  result=new_sig;%return result 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%