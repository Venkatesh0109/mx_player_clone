import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/layout_provider.dart';

import 'package:provider/provider.dart';

Widget bottomBar(BuildContext context) {
  return Consumer<LayoutProvider>(
      builder: (context, value, child) => BottomNavigationBar(
              onTap: (value) =>
                  Provider.of<LayoutProvider>(context, listen: false)
                      .changeBottombar(value),
              fixedColor: AppColors.brand,
              unselectedItemColor: AppColors.brand,
              iconSize: 40,
              selectedFontSize: 16,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    value.pageindex == 0
                        ? Icons.folder_copy
                        : Icons.folder_copy_outlined,
                    size: 30,
                  ),
                  label: 'Local',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    value.pageindex == 1
                        ? Icons.play_circle
                        : Icons.play_circle_outline,
                    size: 30,
                  ),
                  label: 'Video',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    value.pageindex == 2
                        ? Icons.library_music
                        : Icons.library_music_outlined,
                    size: 30,
                  ),
                  label: 'Music',
                ),
              ]));
}
