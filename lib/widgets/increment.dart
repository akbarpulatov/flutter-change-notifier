import 'package:change_notifier/blocs/counter_view_model.dart';
// import '../blocs/counter_block.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterViewModel counterViewModel =
        Provider.of<CounterViewModel>(context, listen: false);

    return FlatButton.icon(
      icon: Icon(
        Icons.add,
        color: counterViewModel.color,
      ),
      label: Text('add'),
      onPressed: () => counterViewModel.increment(),
    );
  }
}
