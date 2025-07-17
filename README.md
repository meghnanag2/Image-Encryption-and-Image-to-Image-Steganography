# Image-Encryption-and-Image-to-Image-Steganography

# Secure Medical Image Sharing
A two-layer secure pipeline using **Image Encryption** and **Image-to-Image Steganography** to protect sensitive medical images during transmission and cloud storage.

## Objective
To develop a secure method for storing and transmitting medical images using:
- **Symmetric key image encryption**
- **LSB-based steganographic embedding**
- **Cloud-agnostic image privacy layer**

## Techniques Used
- Symmetric key encryption using XOR operations
- Key generation using chaotic logistic map logic
- LSB (Least Significant Bit) substitution for embedding
- Reverse steganography for secure image recovery

## Workflow
1. Encrypt medical image with symmetric key.
2. Embed encrypted image into a cover image (LSB steganography).
3. Transmit stego image.
4. At receiver end: extract and decrypt image.

## Directory Overview
- `src/encryption/` – Encryption/decryption logic and key generation.
- `src/steganography/` – LSB embedding and extraction scripts.
- `docs/` – Project synopsis, algorithms, and presentation slides.
- `samples/` – Sample original, encrypted, stego, and decrypted images.
- `tests/` – Unit tests for encryption and stego modules.

## Contributors
- Meghna Nag  
- Anannya Chandra  
- Nidhi Kumari  
- Sourav Das  
### Supervised by Indrajit Das, Assistant Professor, MEGHNAD SAHA INSTITUTE OF TECHNOLOGY (https://scholar.google.com/citations?user=jRfnKWEAAAAJ&hl=en)

