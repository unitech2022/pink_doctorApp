import 'package:flutter/material.dart';
import 'components/app_bar_favorite.dart';
import 'components/list_favorite_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        AppBarFavorite(),
        SizedBox(
          height: 21,
        ),
        ListFavoriteWidget()
      ],
    ));
  }
}


