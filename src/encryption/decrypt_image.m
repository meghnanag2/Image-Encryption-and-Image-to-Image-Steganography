function decrypted = decrypt_image(encrypted_image, key)
    decrypted = bitxor(encrypted_image, key);
end