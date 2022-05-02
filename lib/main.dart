import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';
import 'restaurant/restaurant_observer.dart';

void main() {
  BlocOverrides.runZoned(
        () => runApp(const RestaurantApp()),
    blocObserver: RestaurantObserver(),
  );
}
