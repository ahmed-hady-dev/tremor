import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  int counter = 0;
  void incrementCounter() {
    counter++;
    print(counter.toString());
    emit(CounterIncrementState());
  }

  void decrementCounter() {
    counter--;
    print(counter.toString());
    emit(CounterDecrementState());
  }
}
