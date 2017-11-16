clear ; close all; clc
load('ex3data1.mat');
load('ex3weights.mat');


input_layer_size  = 400;  % 20x20 Input Images of Digits
hidden_layer_size = 25;   % 25 hidden units
num_labels = 10;

m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

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

%for loop
for c = 1:size(X,1)
[M,I] = max(a3(:,1c));
end


c = size(X,1);
[M,I] = max(a3(:,1:c));
p = I';





a3(1,1:10)
a = 1:10;
b = 3
a==b