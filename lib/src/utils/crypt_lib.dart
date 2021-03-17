import 'dart:convert';
import 'dart:typed_data';
import 'package:cryptography/cryptography.dart';

String CryptoJSAesEncrypt(String passphrase, String plain_text, [String crypt_data]){
  var salt = CryptoJS.lib.WordArray.random(256);
  var iv = CryptoJS.lib.WordArray.random(16);
    if (crypt_data) {
    salt = crypt_data.salt;
    iv = crypt_data.iv;
  }

  final algorithm = Pbkdf2();
  var key = algorithm.(passphrase, salt, { hasher: CryptoJS.algo.SHA512, keySize: 64/8, iterations: 999 });

  var encrypted = CryptoJS.AES.encrypt(plain_text, key, {iv: iv});

  var data = {
  ciphertext : CryptoJS.enc.Base64.stringify(encrypted.ciphertext),
  salt : CryptoJS.enc.Hex.stringify(salt),
  iv : CryptoJS.enc.Hex.stringify(iv),
  crypt_data: {
  salt : salt,
  iv : iv,
  }
  }
  return data;
}

String CryptoJSAesDecrypt(String passphrase, obj_json) {
  var encrypted = obj_json.ciphertext;
  // var salt = CryptoJS.enc.Hex.parse(obj_json.salt);
  // var iv = CryptoJS.enc.Hex.parse(obj_json.iv);
  // var key = CryptoJS.PBKDF2(passphrase, salt,
  //     { hasher: CryptoJS.algo.SHA512, keySize: 64 / 8, iterations: 999});
  //
  // var decrypted = CryptoJS.AES.decrypt(encrypted, key, { iv: iv});
  // return decrypted.toString(CryptoJS.enc.Utf8);
  final algorithm = AesGcm();
  final secretKey = algorithm.newSecretKeySync();
  algorithm.decrypt(utf8.encode(passphrase), secretKey: secretKey, nonce: null)
}

String hash(data, [String time = '']) {
  String crypt = sha256.hashSync(utf8.encode(data)).toString();
  return crypt + '::' + (time != null ? time : '');
}

const crypt_lib = {
  'hash': hash,
  'encrypt': CryptoJSAesEncrypt,
  'decrypt': CryptoJSAesDecrypt,
};

