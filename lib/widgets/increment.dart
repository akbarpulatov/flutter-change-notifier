import 'package:change_notifier/blocs/counter_block.dart';
// import '../blocs/counter_block.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return FlatButton.icon(
      icon: Icon(Icons.add),
      label: Text('add'),
      onPressed: () => counterBloc.increment(),
    );
  }
}
