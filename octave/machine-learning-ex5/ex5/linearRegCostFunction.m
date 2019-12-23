function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
size(theta);
% size(X);
Y = X * theta;
% size(Y)
J = 1/(2*m) * sum((Y.-y).^2) + lambda/(2*m) * sum(theta(2:end).^2);

% size(grad)
% size(X)
% size(Y)
% size(y)
% size(Y-y)
grad = 1/m * (X'*(Y-y));
% size(grad)
% size(theta')
% size(grad)
% size(theta)
grad(2:end) = grad(2:end) + lambda/m * (theta(2:end));











% =========================================================================

grad = grad(:);

end
