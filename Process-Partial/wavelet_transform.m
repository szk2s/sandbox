
%% Audio import
input_filepath = './assets/wav/church2.wav';
[audio, Fs] = audioread(input_filepath);
[audio, Fs] = prepareAnalysis(audio, Fs);  %sum to mono and normalize audio 

% audio = audio(0.5*Fs:1.5*Fs); %if you want to crop input file.
endtime = length(audio) / Fs;
sound(audio, Fs);
%% Wavelet Transform

[cfs,f] = cwt(audio',Fs,'WaveletParameters',[14,200]);
p = abs(cfs).^2;
p = normalizeMatrix(p); 
p = p.*0.999;%  normalize
sampleIndices = 0:1:size(audio,1)-1;
t = sampleIndices / Fs;

%% Export Workspace 

[~,name,~] = fileparts(input_filepath);

clear cfs
clear audio
clear Fs
clear sampleIndices

save(strcat('./mat/', name, '.mat'))

