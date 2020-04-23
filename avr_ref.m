function datat = avr_ref( data )
% data: the cross-spectral matrix of nd xnd x nf (nd: number of electrodes; nf: number of frequencies)
%Avr_ref Pre and  post multiply the data matrix times the centering operator H

[nd, nd, nfrec] = size(data);

H=eye(nd)-ones(nd,nd)./nd;

datat=zeros(nd,nd,nfrec);
for w=1:nfrec
    R=data(:,:,w);
    datat(:,:,w)=H*R*H';
end
