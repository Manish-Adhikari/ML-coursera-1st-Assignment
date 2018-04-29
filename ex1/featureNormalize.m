function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%   
hs=size(X,1);
m1=mean(X(:,1));
s1=m1*ones(hs,1);
strd1=std(X(:,1));
strds1=strd1*ones(hs,1);
X_norm1=(X(:,1).-s1)./strds1;
m2=mean(X(:,2));
s2=m2*ones(hs,1);
strd2=std(X(:,2));
strds2=strd2*ones(hs,1);
X_norm2=(X(:,2).-s2)./strds2;
X_norm=[X_norm1 X_norm2];
mu= [m1 m2];
sigma= [strd1 strd2];







% ============================================================

end
