function encrypted = encrypt_image(image, key)
    encrypted = bitxor(image, key);
end