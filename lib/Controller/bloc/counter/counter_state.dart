abstract class CounterState{}
class CounterValue extends CounterState{
  final int count;
  CounterValue(this.count);
}