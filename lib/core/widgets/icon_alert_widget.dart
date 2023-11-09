import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;



// class IconAlertWidget extends StatelessWidget {
//   final double t, l;
//    IconAlertWidget(
//    {this.t=15,this.l=20}
//   );

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeCubit, HomeState>(
//       builder: (context, state) {
//         return GestureDetector(
//           onTap: () {
//             // pushPage(context, const NotificationsScreen());
//             pushTranslationPage(
//                                     context: context,
//                                     transtion:
//                                         FadTransition(page: NotificationsScreen()));
//           },
//           child: Padding(
//             padding:  EdgeInsets.only(top: t, left: l),
//             child: badges.Badge(
//               badgeContent: Text(
//                 currentUser.role == AppModel.userRole
//                     ? state.homeUserResponse != null
//                         ? state.homeUserResponse!.notiyCount.toString()
//                         : "0"
//                     : state.homeResponseProvider != null
//                         ? state.homeResponseProvider!.notiyCount.toString()
//                         : "0",
//                 style: const TextStyle(color: Colors.white, height: 1.8),
//               ),
//               position: badges.BadgePosition.topStart(top: -12),
//               badgeStyle:
//                   const badges.BadgeStyle(badgeColor: Palette.mainColor),
//               child: SvgPicture.asset("assets/icons/noty.svg"),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
