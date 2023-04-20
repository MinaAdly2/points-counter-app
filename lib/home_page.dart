import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';
import 'package:points_counter/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Center(
              child: Text(
                'Points Counter',
                style: TextStyle(
                  fontSize: 26.0,
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 32.0),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: const TextStyle(fontSize: 150.0),
                        ),
                        const CustomButton(
                            title: 'Add 1 Point', buttonNumber: 1, team: 'A'),
                        const CustomButton(
                            title: 'Add 2 Point', buttonNumber: 2, team: 'A'),
                        const CustomButton(
                            title: 'Add 3 Point', buttonNumber: 3, team: 'A'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500.0,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.0,
                      indent: 50.0,
                      endIndent: 50.0,
                    ),
                  ),
                  SizedBox(
                    height: 500.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 32.0),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(fontSize: 150.0),
                        ),
                        const CustomButton(
                            title: 'Add 1 Point', buttonNumber: 1, team: 'B'),
                        const CustomButton(
                            title: 'Add 2 Point', buttonNumber: 2, team: 'B'),
                        const CustomButton(
                            title: 'Add 3 Point', buttonNumber: 3, team: 'B'),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).counterZero();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(150.0, 50.0),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
