function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
%temp = sum(X,2);
%temp = temp./m;
one = zeros(1,n);
two = zeros(1,n);
three=zeros(1,n);
c1=0;c2=0;c3=0;
for i = 1:m
    if idx(i,1) == 1
        one = one+X(i,:);
        c1 = c1+1;
    elseif idx(i,1) == 2
            two = two + X(i,:);
            c2 = c2+1;
    else
        three = three+X(i,:);
        c3 = c3+1;
    end
end
disp(one)
centroids(1,:) = one/c1;
centroids(2,:) = two/c2;
centroids(3,:) = three/c3;






% =============================================================


end

