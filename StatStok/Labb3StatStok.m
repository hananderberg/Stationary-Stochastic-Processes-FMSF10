%3.1
%C=1;
%A=[1 -0.5];
%[H,w]=freqz(A, C);
%R=abs(H).^2;
%plot(w/2/pi,R)

%Covariance function
%H=freqz(C,A,512,'whole');
%Rd=abs(H).^2;
%r=ifft(Rd);
%stem([0:49],r(1:50);

%Realisation
%m = 0;
%sigma = 1;
%e = normrnd(m, sigma, 1, 512);
%x = filter(C, A, e);
%plot(x);

%5.1
[x,Fs] = audioread('fa.wav');
%sound(x,Fs);
%plot(x);
[a,e] = arcov(x, 20);
%plot(a)
whos x ar_param
%plot(x_rec)
sound(x_rec,Fs)

%3.2
% Specify an ARMA(2,2)-process using A=[1 -1 0.5] and C=[1 1 0.5]. 
A=[1 -1 0.5];
C=[1 1 0.5];
%P = roots(A);
%Z = roots(C);
% zplane(Z,P)

% When using the function zplane, the poles must be located in column vectors. 
% If row vectors are used as input, zplane interprets this as polynomial vectors 
% and plots roots(A). Verify this by using the commands zplane(Z,P) and zplane(C,A).
% zplane(C,A)


%If the poles P and zeros Z are specified instead and you want to calculate 
% the polynomials A and C, one may use the command poly
%A=poly(P);
%C=poly(Z);

% Sketch the spectral density just from the view of the pole-zero plot. 
%[H,w]=freqz(C,A);
%R=abs(H).^2;
% plot(w/2/pi,R)

%4
% help armagui
%armagui

% Restart by removing the poles with the button ”Remove all”. Add a complex 
% pole, (gives you the pole as well as the conjugate). Move the poles 
%(easily done with the mouse button). Change the angle frequency from the 
%real axis and keep quite close to the unit circle.
