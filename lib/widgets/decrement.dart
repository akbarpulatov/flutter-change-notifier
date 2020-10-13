import 'package:change_notifier/blocs/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterViewModel counterBloc =
        Provider.of<CounterViewModel>(context, listen: false);

    return FlatButton.icon(
      icon: Consumer<CounterViewModel>(
        builder: (BuildContext context, viewModel, Widget child) {
          return Icon(Icons.remove, color: viewModel.color);
        },
      ),
      label: Text('Remove'),
      onPressed: () {
        counterBloc.decrement();
      },
    );
  }
}
