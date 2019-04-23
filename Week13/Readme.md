# Homework 13
I want you to write a simple Caesar Cipher in bash that I can use to encrypt/decrypt a small bit of sample text ( as simple as "hello world!"). Then I want you to use my public gpg key ( ascii encrypted please, use --armor ) to encrypt your submission.

Here's an example of a caesar cipher in bash: https://gist.github.com/IQAndreas/030b8e91a8d9a407caa6
Check wikipedia for more information.

Submit three files:

1. encrypt.sh
2. decrypt.sh
3. sample_text.txt
Files 1, 2, 3 must be encrypted with my public gpg key so that I can decrypt them with my private key.

```
./encrypt.sh sample_text.txt > encrypted
./decrypt.sh encrypted > decrypted
```

decrypted should be exactly the same as sample_text.txt.

PR by 7 PM May 2nd! Pretty simple assignment, but might be a little confusing. Reach out with any questions. Hopefully the lecture notes explain clearly what needs to be done, but let me know.
