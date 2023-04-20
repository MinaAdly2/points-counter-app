import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';

class CustomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomButton({
    required this.title,
    required this.team,
    required this.buttonNumber,
  });

  final String title;
  final String team;
  final int buttonNumber;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .teamIncrement(team: team, buttonNumber: buttonNumber);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        minimumSize: const Size(150.0, 50.0),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
