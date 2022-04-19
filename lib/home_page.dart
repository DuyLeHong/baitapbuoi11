import 'package:baitapbuoi10/home_state.dart';
import 'package:baitapbuoi10/volumn_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_bloc.dart';
import 'home_event.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _decrementCounter(BuildContext context) {
    context.read<HomeBloc>().add(DecreaseEvent());
  }

  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter(BuildContext context) {
    context.read<HomeBloc>().add(IncreaseEvent());
  }

  void _incrementVolumnCounter() {
    context.read<HomeBloc>().add(IncreaseVolumnEvent());
  }

  void _decrementVolumnCounter() {
    context.read<HomeBloc>().add(DecreaseVolumnEvent());
  }

  void _muteVolumnCounter() {
    context.read<HomeBloc>().add(MuteVolumnEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocSelector<HomeBloc, HomeState, int>(
              selector: (state) => state.channel,
              builder: (_, channel) {
                print('hoan.dv; build channel');

                return Text(
                  'Kênh hiện tại: $channel',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            const VolumnView(),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  _decrementCounter(context);
                },
                tooltip: 'Decrement',
                child: const Text(
                  '-1',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () {
                  _incrementCounter(context);
                },
                tooltip: 'Increment',
                child: const Text(
                  '+1',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: _incrementVolumnCounter,
                tooltip: 'IncrementVolumn',
                child: const Icon(Icons.volume_up_rounded),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: _decrementVolumnCounter,
                tooltip: 'DecrementVolumn',
                child: const Icon(Icons.volume_down),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: _muteVolumnCounter,
                tooltip: 'Mute',
                child: const Icon(Icons.volume_mute),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
