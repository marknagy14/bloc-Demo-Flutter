import 'package:flutter/material.dart';
import 'package:session_thir_bloc/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit(): super(CounterInitial());

  int counter = 0;

  incrementCounter() {

    counter++;
    print(counter);
    emit(CounterIncremented());// equivalent to notifyListeners

  }

  decrementCounter() {

    counter--;
    print(counter);
    emit(CounterDecremented());

  }



}