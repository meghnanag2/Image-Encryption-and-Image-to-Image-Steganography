function stego_img = embed_lsb(cover_img, secret_img)
    [rows, cols] = size(secret_img);
    stego_img = cover_img;
    for i = 1:rows
        for j = 1:cols
            for k = 1:3
                pixel = cover_img(i, j, k);
                bit = bitget(secret_img(i,j), k);
                stego_img(i, j, k) = bitset(pixel, 1, bit);
            end
        end
    end
end
