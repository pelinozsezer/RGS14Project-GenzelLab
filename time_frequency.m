function [freq]=time_frequency(ft_data1,freqrange,toy)

% Compute spectrogram

cfg = [];
cfg.method = 'mtmconvol';
cfg.taper = 'dpss';
cfg.foi = freqrange;
cfg.t_ftimwin = .1 * ones(size(cfg.foi));
cfg.tapsmofrq = 10;
cfg.toi=toy;
cfg.keeptrials = 'yes';
cfg.output         = 'pow';

freq = ft_freqanalysis(cfg, ft_data1);

end


