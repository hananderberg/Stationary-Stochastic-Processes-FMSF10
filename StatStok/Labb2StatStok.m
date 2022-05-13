% 3.1
meanUnknowndata = mean(data);
%plot(data);

zeroMeanUnknowndata = data - meanUnknowndata;
meanUsed = mean(zeroMeanUnknowndata);
%plot(zeroMeanUnknowndata);

%Plot the periodogram
X=fft(zeroMeanUnknowndata); 
n=length(zeroMeanUnknowndata);
Rhat=(X.*conj(X))/n;
f=[0:n-1]/n;
%plot(f,Rhat);

%Frequencies -1/2-1/2
%plot(f-0.5,fftshift(Rhat));

%Zero-padding 
N=4096;
X=fft(zeroMeanUnknowndata,N); 
Rhat=(X.*conj(X))/n;
f=[0:N-1]/N;
%plot(f,Rhat);

%Inverse FFT
rhat=ifft(Rhat);
%plot([0:15],rhat(1:16));

%6
L=100;
hanning(100);
mscohere(x1,y1,hanning(L),[],4096);
mscohere(x3,y1,hanning(L),[],4096);
