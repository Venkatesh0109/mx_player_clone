import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/key.dart';
import 'package:flutter_application_2/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar customAppbar() {
  return AppBar(
    toolbarHeight: 60,
    backgroundColor: const Color(0xff3C8CEF),
    leading: InkWell(
      onTap: () {
        drawerkey.currentState!.openDrawer();
      },
      child: const Icon(
        Icons.menu,
        size: 28,
      ),
    ),
    title: Text("Folders",
        style: GoogleFonts.mulish(
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
    actions: [
      const Icon(Icons.cast),
      wSpace(24),
      InkWell(onTap: () {}, child: const Icon(Icons.search)),
      wSpace(24),
      const Icon(Icons.dashboard),
      wSpace(14),
      InkWell(onTap: () {}, child: const Icon(Icons.more_vert)),
      wSpace(14),
    ],
  );
}

PreferredSizeWidget videoAppbar() {
  return AppBar(
    backgroundColor: AppColors.brand,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 36)),
            Icon(Icons.play_circle_filled_outlined,
                size: 36, color: AppColors.gold),
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
            const Padding(padding: EdgeInsets.symmetric(horizontal: 34)),
            Icon(
              Icons.cast,
              size: 24,
              color: AppColors.white,
            ),
            wSpace(26),
            Icon(
              Icons.search,
              size: 24,
              color: AppColors.white,
            ),
            wSpace(26),
            Icon(
              Icons.notifications_none_outlined,
              size: 24,
              color: AppColors.white,
            ),
            wSpace(4),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 30,
              color: Colors.red,
            )
          ],
        )
      ],
    ),
  );
}
