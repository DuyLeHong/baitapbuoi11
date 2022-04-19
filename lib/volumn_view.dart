import 'package:baitapbuoi10/home_bloc.dart';
import 'package:baitapbuoi10/home_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VolumnView extends StatelessWidget {
  const VolumnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
      return Text(
        'Âm lượng hiện tại: ${state.volumn}',
        style: Theme.of(context).textTheme.headline4,
      );
    });
  }
}
