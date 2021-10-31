
import 'dart:async';

class CounterBloc{
int _value = 0;
StreamController<int> _valueController = StreamController<int>();

void increment(){
  _value++;
  _valueController.add(_value);//use setter for add value
}
void decrement(){
  _value--;
  _valueController.add(_value);
}

Stream<int> getStream(){
  return _valueController.stream;
  //from here return our expected value
}

void dispose(){
  _valueController.close();
}

}
