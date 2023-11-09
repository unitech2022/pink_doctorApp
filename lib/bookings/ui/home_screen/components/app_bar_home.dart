import 'package:flutter/widgets.dart';

import '../../../../core/layout/palette.dart';
import 'cart_icon_button.dart';
import 'chat_botton_widget.dart';
import 'container_field_search.dart';
import 'select_address_widget.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          color: Palette.mainColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
      child: const Row(
        children: [
          //** select address */
          SelectAddressWidget(),
          SizedBox(
            width: 8,
          ),
          // ** search Container
          ContainerFieldSearch(),
          SizedBox(
            width: 8,
          ),
          // ** chat Botton
          ButtonChatWidget(),
          SizedBox(
            width: 8,
          ),
          //** Cart button */
          CartIconButton()
        ],
      ),
    );
  }
}
