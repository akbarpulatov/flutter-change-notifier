import 'package:change_notifier/blocs/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterViewModel counterBloc = Provider.of<CounterViewModel>(context);

    return FlatButton.icon(
      icon: Icon(Icons.remove),
      label: Text('Remove'),
      onPressed: () => counterBloc.decrement(),
    );
  }
}
