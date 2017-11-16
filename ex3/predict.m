function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
%size(X,1) %Xの行数を取得
%ones(size(X,1),1); %Xの行数だけ１を作る
X = horzcat(ones(size(X,1),1),X); %一の行を一つ追加する

%初期化
a1 = zeros(size(X));
z2 = zeros(size(Theta1*a1'));
a2 = zeros(size(z2));

%culculate
a1 = X;
z2 = Theta1*a1';
a2 = sigmoid(z2);

%size(a2,2) %a2の列数を取得
%ones(1,size(a2,2)) %a2の列数だけ1を作る
a2 = vertcat(ones(1,size(a2,2)),a2);

%initialation
z3 = zeros(size(Theta2*a2));
a3 = zeros(size(z3));

%calculate
z3 = Theta2*a2;
a3 = sigmoid(z3);

c = size(X,1);
[M,I] = max(a3(:,1:c));
p = I';


% =========================================================================


end
