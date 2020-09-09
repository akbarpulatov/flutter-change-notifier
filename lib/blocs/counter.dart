import 'package:change_notifier/widgets/decrement.dart';
import 'package:change_notifier/widgets/increment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_block.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 62.0),
              ),
              IncrementButton(),
              DecrementButton(),
            ],
          ),

          // child: Text(
          //   counterBloc.counter.toString(),
          //   style: TextStyle(fontSize: 62.0),
          // ),
        ),
      ),
    );
  }
}
