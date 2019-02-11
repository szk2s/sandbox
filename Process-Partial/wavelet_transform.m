%% Audio import
input_filepath = './assets/wav/fogs_short.wav';
[audio, Fs] = audioread(input_filepath);
[audio, Fs] = prepareAnalysis(audio, Fs);  %sum to mono and normalize audio

% audio = audio(0.5*Fs:1.5*Fs); %if you want to crop input file.
endtime = length(audio) / Fs;
sound(audio, Fs);
%% Wavelet Transform

[cfs,f] = cwt(audio',Fs,'WaveletParameters',[14,200], 'VoicesPerOctave', 48);
p = abs(cfs).^2;
p = p / max(p(:));
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

%% define sub function

function [result, Fs] = prepareAnalysis(audioData, sr)
    monoAudio = mean(audioData,2);
    ratio = 1/max(abs(monoAudio));
    monoAudio = monoAudio * ratio;
    if sr == 96000
        result = resample(monoAudio,1,2);
        Fs = sr/2;
    else
        result = monoAudio;
        Fs = sr;
    end
end
