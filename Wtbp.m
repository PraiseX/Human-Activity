function Y = Wtbp(arr, interval);
    [~,lop] = findpeaks(arr);
    Y = diff(lop) * interval;
end