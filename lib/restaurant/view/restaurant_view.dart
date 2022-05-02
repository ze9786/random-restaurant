import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_restaurant/restaurant/restaurant_cubit.dart';

import '../../util/bottom_sheet.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class RestaurantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<RestaurantCubit, String>(
          builder: (context, state) {
            return Text(state, style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            // onPressed: () => context.read<RestaurantCubit>().addRestaurant("aa"),
            onPressed: () => showBottomSheet(context),
          ),
        ],
      ),
    );
  }
}

Future<void> showBottomSheet(BuildContext context) async {
  var bottomSheet = showModalBottomSheet<String>(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    builder: (BuildContext context) {
      return BottomSheetWidget();
    },
  );
  // Detect when it closes
  await bottomSheet.then((onValue) {
    context.read<RestaurantCubit>().addRestaurant(onValue!);
  });
}
