m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];
initial_theta = zeros(n + 1, 1);

options = optimset('GradObj', 'on', 'MaxIter', 50);

all_theta=[];
ckthe=[];

for c = 1:2
    [theta] = ...
         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
                 initial_theta, options);
           test1=theta'
           all_theta=[all_theta;theta']
end;