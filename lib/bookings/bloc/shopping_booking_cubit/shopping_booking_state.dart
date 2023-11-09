part of 'shopping_booking_cubit.dart';

class ShoppingBookingState extends Equatable {
  final int view ,indexTabBar;

 
 
 const ShoppingBookingState(
      {
      this.view = 0,
       this.indexTabBar =0,
     
      });

  ShoppingBookingState copyWith({
    
    final int? view,
      final int? indexTabBar,
   
  }) =>
      ShoppingBookingState(
        
          view: view ?? this.view,
             indexTabBar: indexTabBar ?? this.indexTabBar,
        );

  @override
  List<Object?> get props => [
        view,indexTabBar
      ];
 
}
