import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;

  int teamBPoints = 0;

// void TeamAIncrement({required int buttonNumber}) {
  //   teamAPoints += buttonNumber;
  //   emit(CounterAIncrementState());
  // }

  // void TeamBIncrement({required int buttonNumber}) {
  //   teamBPoints += buttonNumber;
  //   emit(CounterBIncrementState());
  // }

  // ################ OR #######################

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void counterZero() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterZeroState());
  }
}
