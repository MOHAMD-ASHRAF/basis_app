import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int value = 0;

  void valueAddOne() {
    value += 1;
      emit(CounterAddState());
  }

  void valueMinusOne() {
    value -= 1;
    emit(CounterMinusState());
  }

}
