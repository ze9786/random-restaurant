import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'restaurant_state.dart';

class RestaurantCubit extends Cubit<String> {
  RestaurantCubit() : super("");

  void addRestaurant(String text) => emit(state + text + ",");
}
