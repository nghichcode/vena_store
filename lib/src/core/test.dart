enum CounterEvent { increment, decrement }

void main() {
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
