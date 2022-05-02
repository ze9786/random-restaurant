import 'package:flutter/material.dart';
import 'package:random_restaurant/restaurant/view/restaurant_page.dart';
import 'package:random_restaurant/restaurant/view/restaurant_view.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class RestaurantApp extends MaterialApp {
  /// {@macro counter_app}
  const RestaurantApp({Key? key}) : super(key: key, home:const RestaurantPage());
}
