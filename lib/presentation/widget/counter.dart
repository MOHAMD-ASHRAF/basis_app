import 'package:basis_app/bloc/counter/counter_cubit.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        return BlocBuilder<CounterCubit,CounterState>(builder: (context, state){
          return Row(
            children: [
              IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).valueMinusOne();
                  }, icon: const Icon(CupertinoIcons.minus)),
              const SizedBox(width: 10,),
              Text1(text: BlocProvider.of<CounterCubit>(context).value.toString(), color: Colors.grey,),
              const SizedBox(width: 10,),
              IconButton(onPressed: () {
                BlocProvider.of<CounterCubit>(context).valueAddOne();
              },
                  icon: const Icon(CupertinoIcons.add_circled_solid)),

            ],
          );
        });
  }
}