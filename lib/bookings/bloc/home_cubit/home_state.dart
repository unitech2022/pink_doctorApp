part of 'home_cubit.dart';

 class HomeState extends Equatable {
  final int currentNavIndex;
  const HomeState(
      {
      this.currentNavIndex = 0,
     
     
      });

  HomeState copyWith({
    
    final int? currentNavIndex,
   
  }) =>
      HomeState(
        
          currentNavIndex: currentNavIndex ?? this.currentNavIndex,
        );

  @override
  List<Object?> get props => [
        currentNavIndex,
       
      ];

  
}


