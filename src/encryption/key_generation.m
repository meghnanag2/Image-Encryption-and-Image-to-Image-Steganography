function key = key_generation(rows, cols, seed, r)
    if nargin < 3
        seed = 0.5;
        r = 3.99;
    end
    x = seed;
    key = zeros(rows, cols);
    for i = 1:(rows * cols)
        x = r * x * (1 - x);
        key(i) = mod(round(x * 255), 256);
    end
    key = reshape(key, rows, cols);
end