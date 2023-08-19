%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WELCOME%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%add echo to audio file
%Signal System 99/3/17
function result=echo(sig,Fs,f1,f2)%sig->signal
%   D=Fs;
%   D1=1;
%   D2=0.5;
%   delay1=D1*Fs;
%   delay2=D2*Fs;
%   T=zeros(size(sig)); 
%   for i =D+1:1:length(sig)
%        T(i)=sig(i)+ f1*sig(i-delay1)+f2*sig(i-delay2);
%   end
%   result=T;
   new_sig=filter(1,[1 zeros(1,(Fs/2)-1) -f1 zeros(1,(Fs/2)-1) -f2],sig);
   %using filter
   result=new_sig;%return result
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%