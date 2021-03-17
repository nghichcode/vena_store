import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

enum CounterEvent { increment, decrement }

void main() {
  print(new DateTime.now().microsecondsSinceEpoch);
  print(new DateTime.now().millisecondsSinceEpoch);
  final algorithm = AesGcm();
  final secretKey = algorithm.newSecretKeySync();
  final nonce = algorithm.newNonce();

  Uint8List enc = algorithm.encryptSync(utf8.encode('ABC'), secretKey: secretKey, nonce: nonce);
  print(secretKey.toString());
  print(nonce.bytes);
  print(utf8.decode(secretKey.extractSync()));
  print(enc.toString());
}

void counterTest() {
  int counter = 0;

  CounterEvent event = CounterEvent.increment;
  counter = act(event, counter);
  counter = act(event, counter);
  print(counter);
  counter = act(CounterEvent.decrement, counter);
  print(counter);
}

int act(event, counter) {
  switch (event) {
    case CounterEvent.increment:
      counter++;
      break;
    case CounterEvent.decrement:
      counter--;
      break;
  }

  return counter;
}
