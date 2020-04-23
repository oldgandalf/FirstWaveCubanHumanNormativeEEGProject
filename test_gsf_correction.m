load('ANRA0101_cross.mat')
%Mcr is the cross-spectral matrix of nd xnd x nf  (where nd: number of electrodes; nf: number of frequecies
datat = avr_ref(Mcr);  %Re-reference the data to the Average Reference
[datat, factor] = gsf(datat); %Calculate the GSF and apply to the data

