% We determine the range of values 
%for each axis (maximum – minimum), divide this range into 
%10 equal sized bins, and then record what fraction of the 
%200 values fell within each of the bins.

function Y = Wbinned(X);
Y = [];
r = range(X);
counts = discretize(r, 10);
for i = 1:numel(X)
    element = X(i);
    for j = 1:numel(counts)
        if element.between(counts(j), counts(j+1))
            resultRow = [resultRow, element];
        end
        Y = [Y ; resultRow];
    end
end
end