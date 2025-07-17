cover_img = imread('cover_image.png');
secret_img = imread('original_image.png');

if size(secret_img, 3) == 3
    secret_img = rgb2gray(secret_img);
end

[rows, cols] = size(secret_img);
key = key_generation(rows, cols);

% Encrypt
encrypted_img = encrypt_image(secret_img, key);

% Embed
stego_img = embed_lsb(cover_img, encrypted_img);

% Extract
extracted_img = extract_lsb(stego_img);

% Decrypt
decrypted_img = decrypt_image(extracted_img, key);

% Save results
imwrite(encrypted_img, 'encrypted_image.png');
imwrite(stego_img, 'stego_image.png');
imwrite(extracted_img, 'extracted_image.png');
imwrite(decrypted_img, 'decrypted_image.png');