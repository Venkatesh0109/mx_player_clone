import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/constants/context.dart';
import 'package:flutter_application_2/emojis.dart';
import 'package:flutter_application_2/key.dart';
import 'package:flutter_application_2/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

AppBar customAppbar() {
  return AppBar(
    toolbarHeight: 60,
    titleSpacing: 10,
    backgroundColor: const Color(0xff3C8CEF),
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                drawerkey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                size: 28,
              ),
            ),
            wSpace(16),
            // const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            Text("Folders",
                style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18))),
          ],
        ),
        // const Padding(padding: EdgeInsets.symmetric(horizontal: 56)),
        Row(
          children: [
            const Icon(Icons.cast),
            wSpace(18),
            InkWell(onTap: () {}, child: const Icon(Icons.search)),
            wSpace(18),
            const Icon(Icons.dashboard),
            wSpace(18),
            InkWell(onTap: () {}, child: const Icon(Icons.more_vert)),
          ],
        ),
      ],
    ),
  );
}

// AppBar videoAppbar() {
//   return AppBar(
//     toolbarHeight: 100,
//     backgroundColor: AppColors.brand,
//     automaticallyImplyLeading: false,
//     title: Column(
//       children: [
//         Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     drawerkey.currentState!.openDrawer();
//                   },
//                   child: const Icon(
//                     Icons.menu,
//                     size: 28,
//                   ),
//                 ),
//                 // const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
//                 Icon(Icons.play_circle_filled_outlined,
//                     size: 36, color: AppColors.gold),
//                 Text(
//                   "MX",
//                   style: GoogleFonts.mulish(
//                       textStyle: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w900,
//                           color: AppColors.white)),
//                 ),
//                 Text(
//                   "PLAYER",
//                   style: GoogleFonts.mulish(
//                       textStyle: TextStyle(
//                     fontSize: 18,
//                     color: AppColors.white,
//                     fontWeight: FontWeight.w300,
//                   )),
//                 ),
//               ],
//             ),
//             // const Padding(padding: EdgeInsets.symmetric(horizontal: 42)),
//             Icon(
//               Icons.cast,
//               size: 24,
//               color: AppColors.white,
//             ),
//             // wSpace(26),
//             Icon(
//               Icons.search,
//               size: 24,
//               color: AppColors.white,
//             ),
//             // wSpace(26),
//             Icon(
//               Icons.notifications_none_outlined,
//               size: 24,
//               color: AppColors.white,
//             ),
//           ],
//         ),
//         // hSpace(16),
//         SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     const Icon(
//                       Icons.home,
//                       size: 22,
//                     ),
//                     wSpace(20),
//                     Text(
//                       "SHOWS",
//                       style: GoogleFonts.mulish(
//                           textStyle: const TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.bold)),
//                     ),
//                     wSpace(20),
//                     Text(
//                       "MOVIES",
//                       style: GoogleFonts.mulish(
//                           textStyle: const TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.bold)),
//                     ),
//                     wSpace(20),
//                     Text(
//                       "NEW&HOT",
//                       style: GoogleFonts.mulish(
//                           textStyle: const TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.bold)),
//                     ),
//                     Image.asset(""),
//                     wSpace(20),
//                     Text(
//                       "MXGOLD",
//                       style: GoogleFonts.mulish(
//                           textStyle: const TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.bold)),
//                     ),
//                     Image.asset(""),
//                     wSpace(20),
//                     Text(
//                       "RADIO",
//                       style: GoogleFonts.mulish(
//                           textStyle: const TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.bold)),
//                     ),
//                     Image.asset(""),
//                     wSpace(20),
//                     Text(
//                       "MX VDESI",
//                       style: GoogleFonts.mulish(
//                           textStyle: const TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.bold)),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }

Widget sliverappbar(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return DefaultTabController(
      length: 7,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: AppColors.brand,
              titleSpacing: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // const Padding(padding: EdgeInsets.symmetric(vertical: 22)),
                  Row(
                    children: [
                      Icon(Icons.play_circle_filled_outlined,
                          size: 36, color: AppColors.gold),
                      wSpace(4),
                      Text(
                        "MX",
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: AppColors.white)),
                      ),
                      Text(
                        "PLAYER",
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w300,
                        )),
                      ),
                    ],
                  ),

                  const Padding(padding: EdgeInsets.symmetric(horizontal: 38)),
                  Icon(
                    Icons.cast,
                    size: 24,
                    color: AppColors.white,
                  ),
                  wSpace(14),
                  Icon(
                    Icons.search,
                    size: 24,
                    color: AppColors.white,
                  ),
                  wSpace(14),
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 24,
                    color: AppColors.white,
                  ),
                  wSpace(10),
                ],
              ),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  const Tab(
                    child: Icon(
                      Icons.home,
                      size: 22,
                    ),
                  ),
                  Tab(
                      child: Row(
                    children: [
                      Text(
                        "SHOWS",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Text(
                        "MOVIES",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Text(
                        "NEW&HOT${Emojis.fireEmoji}",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Text(
                        "MX GOLD${Emojis.starEmoji}",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Text(
                        "RADIO${Emojis.micEmoji}",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Text(
                        "MX VDESI${Emojis.blockedEmoji}",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    movies("assets/image1.jpg"),
                    movies("assets/image1.jpg"),
                  ],
                ),
              ),
            )
          ],
        ),
      ));
}

Container movies(String photo) {
  return Container(
    height: 214,
    margin: const EdgeInsets.all(18),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(image: AssetImage(photo), fit: BoxFit.fill)),
  );
}
