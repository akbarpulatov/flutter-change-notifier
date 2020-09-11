import 'package:change_notifier/blocs/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeColorButton extends StatelessWidget {
  const ChangeColorButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterViewModel counterViewModel =
        Provider.of<CounterViewModel>(context);

    return FlatButton.icon(
      icon: Icon(Icons.color_lens),
      onPressed: () => {
        counterViewModel.changeColor(Colors.black),
      },
      label: Text('change color'),
    );
  }
}
