%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WELCOME%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%adding echo to audio and remove it
%Signal System 99/3/17
[sig,fs]=audioread('read_audio/speech_dft_8kHz.wav');%read audio
p_sig=audioplayer(sig,fs);%ready for play audio
play(p_sig);%play audio
pause((length(sig)/fs)+1);%wiat until end of audio
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sig4=echo4000(sig,fs);
p=audioplayer(sig4,fs);
play(p);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
new_sig=echo(sig,fs,0.5,0.25);%add echo to audio
p_new_sig=audioplayer(new_sig,fs);%explained
play(p_new_sig);%explained
pause((length(new_sig)/fs)+1);%explained
audiowrite('save_result/echoSpech.wav',new_sig,fs);%save audio file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
inv_sig=invEcho(new_sig,fs,0.5,0.25);%remove echo of audio
p_inv=audioplayer(inv_sig,fs);
play(p_inv);
pause((length(inv_sig)/fs)+1);
audiowrite('save_result/invEchoSpech.wav',inv_sig,fs);%explained
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%read mimi audio file
[mimi_sig,fss]=audioread('read_audio/mimi.wav');%read audio
new_mimi_sig=invEcho(mimi_sig,fss,0.5,0.25);%remove echo of audio
p_sig_mimi=audioplayer(new_mimi_sig,fss);
play(p_sig_mimi);
audiowrite('save_result/invEchoMimi.wav',new_mimi_sig,fss);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%