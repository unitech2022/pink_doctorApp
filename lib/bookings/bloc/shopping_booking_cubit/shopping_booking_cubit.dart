import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'shopping_booking_state.dart';

class ShoppingBookingCubit extends Cubit<ShoppingBookingState> {
  ShoppingBookingCubit() : super(const ShoppingBookingState());

  static ShoppingBookingCubit get(context) =>
      BlocProvider.of<ShoppingBookingCubit>(context);
  changeCurrentIndexView(int newIndex) {
    emit(state.copyWith(view: newIndex));
  }

    changeCurrentIndexTabBar(int newIndex) {
    emit(state.copyWith(indexTabBar: newIndex));
  }
}
