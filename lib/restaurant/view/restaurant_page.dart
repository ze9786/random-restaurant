import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_restaurant/restaurant/restaurant_cubit.dart';
import 'package:random_restaurant/restaurant/view/restaurant_view.dart';


/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class RestaurantPage extends StatelessWidget {
  /// {@macro counter_page}
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RestaurantCubit(),
      child: RestaurantView(),
    );
  }
}
