import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tremor/view/home/controller/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(listener: (context, state) {
      if (state is CounterIncrementState) {
        print('Haha lol');
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(title: Text("widget.title")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text(
                BlocProvider.of<HomeCubit>(context).counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              ElevatedButton(
                  onPressed:
                      BlocProvider.of<HomeCubit>(context).incrementCounter,
                  child: const Text('Increment', style: TextStyle())),
              ElevatedButton(
                  onPressed: HomeCubit.get(context).decrementCounter,
                  child: const Text('Decrement', style: TextStyle()))
            ],
          ),
        ),
      );
    });
  }
}
