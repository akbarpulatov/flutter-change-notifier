import 'package:change_notifier/blocs/counter_view_model.dart';
// import '../blocs/counter_block.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterViewModel counterBloc = Provider.of<CounterViewModel>(context);

    return FlatButton.icon(
      icon: Icon(Icons.add),
      label: Text('add'),
      onPressed: () => counterBloc.increment(),
    );
  }
}
