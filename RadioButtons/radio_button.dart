import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'RadioCubit/radio_button_cubit.dart';

class RadioButtonListC extends StatelessWidget {
  RadioButtonListC({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RadioButtonCubit, RadioButtonState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: index,
                groupValue: context.read<RadioButtonCubit>().selected,
                onChanged: (index) {
                  context.read<RadioButtonCubit>().selectedRadio(index);
                },
                title: Text('radio ${index + 1}'),
              );
            },
          );
        },
      ),
    );
  }
}


