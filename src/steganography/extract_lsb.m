function extracted = extract_lsb(stego_img)
    [rows, cols, ~] = size(stego_img);
    extracted = zeros(rows, cols);
    for i = 1:rows
        for j = 1:cols
            val = 0;
            for k = 1:3
                bit = bitget(stego_img(i, j, k), 1);
                val = bitor(val, bitshift(bit, k - 1));
            end
            extracted(i, j) = val;
        end
    end
    extracted = uint8(extracted);
end