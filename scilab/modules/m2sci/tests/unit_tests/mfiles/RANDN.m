% Test file for function randn()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = randn(2);res1 = size(res1);
% TEST 2
res2 = randn(3,5);res2 = size(res2);
% TEST 3
res3 = randn(4,4);res3 = size(res3);
% TEST 4
res4 = randn([10,10]);res4 = size(res4);
% TEST 5
res5 = randn(size([1 2]));res5 = size(res5);
% TEST 6
res6 = randn(m2sciUnknownDims([1,2]));res6 = size(res6);
