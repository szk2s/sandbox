%% Audio import
input_filepath = './assets/wav/resampled/higara_2.wav';
[audio, Fs] = audioread(input_filepath);
[audio, Fs] = prepareAnalysis(audio, Fs);  %sum to mono and normalize audio

% audio = audio(0.5*Fs:1.5*Fs); %if you want to crop input file.
endtime = length(audio) / Fs;

if endtime > 30
    audio = audio(1:30*Fs); % crop audio
    endtime = length(audio) / Fs;
end

sound(audio, Fs);
%% Wavelet Transform
timerVal = tic;
timerStartTime = now;
[cfs,f] = cwt(audio',Fs,'WaveletParameters',[14,200], 'VoicesPerOctave', 48);
p = abs(cfs).^2;
p = p / max(p(:));
p = p.*0.999;%  normalize
sampleIndices = 0:1:size(audio,1)-1;
t = sampleIndices / Fs;
elapsedTime = toc(timerVal);

%% Export Log
[~,name,~] = fileparts(input_filepath);

log.name = name;
log.input_filepath = input_filepath;
log.audio_duration = endtime;
log.sampling_rate = Fs;
log.date = datestr(timerStartTime, 'yyyy-mm-dd');
log.time = datestr(timerStartTime, 'HH:MM:SS');
log.elapsed_time.wavelet_transform = elapsedTime;

jsonStr = jsonencode(log);

fid = fopen(strcat('./log/', name, '-', ...
    datestr(timerStartTime, 'yyyy-mm-dd-HH-MM-SS'),'.json'), 'w');
if fid == -1, error('Cannot create JSON file'); end
fwrite(fid, jsonStr, 'char');
fclose(fid);

%% Export Workspace 

clear ans
clear cfs
clear audio
clear Fs
clear sampleIndices
clear jsonStr
clear timerStartTime
clear timerVal
clear fid
clear elapsedTime

save(strcat('./mat/', name, '.mat'), '-v7.3')

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
