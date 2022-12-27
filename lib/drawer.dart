import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/key.dart';
import 'package:flutter_application_2/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map> actions = [
  {'title': 'My Downloads', 'icon': Icons.download},
  {'title': 'M-Cloud', 'icon': Icons.cloud_download_outlined},
  {'title': 'MX Share', 'icon': Icons.share},
  {'title': 'Local Music', 'icon': Icons.music_video}
];

class IconDrawer extends StatefulWidget {
  const IconDrawer({super.key});

  @override
  State<IconDrawer> createState() => _IconDrawerState();
}

class _IconDrawerState extends State<IconDrawer> {
  bool local = false;
  open() {
    setState(() {
      if (local) {
        local = false;
        logger.wtf(local);
      } else {
        local = true;
      }
    });
  }

  bool online = false;

  open2() {
    setState(() {
      if (online) {
        online = false;
      } else {
        online = true;
      }
    });
  }

  bool music = false;
  open3() {
    setState(() {
      if (music) {
        music = false;
      } else {
        music = true;
      }
    });
  }

  bool settings = false;
  open4() {
    setState(() {
      if (settings) {
        settings = false;
      } else {
        settings = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      backgroundColor: AppColors.greyMuted,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                height: 64,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent,
                      Colors.purple,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.4, 0.7],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/3135715.png"),
                    ),
                    wSpace(10),
                    Text("Sign In",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ))),
                  ],
                ),
              ),
              SizedBox(
                height: 76,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: actions.length,
                    itemBuilder: (context, index) => floatIcons(
                        actions[index]['title'], actions[index]['icon'])),
              ),
              Container(
                height: 240,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contents("WhatsApp Status Saver", Icons.whatsapp, true),
                    contents("App Language", Icons.sort_by_alpha_sharp, false),
                    contents("Content Language", Icons.g_translate, false),
                    contents("Dark Theme", Icons.dark_mode_outlined, false),
                    contents("Make Video Default", Icons.video_file, false),
                  ],
                ),
              ),
              Container(
                height: local?300:44+8,
                  padding: const EdgeInsets.all(14),
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          open();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Local",
                                style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ))),
                            const Icon(
                              Icons.chevron_right,
                              color: Color(0xff5d6067),
                            ),
                          ],
                        ),
                      ),
                      local
                          ? SizedBox(
                            height: 220,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  localcontainer(
                                      Icons.lock_outline_sharp, "Private folder"),
                                  localcontainer(
                                      Icons.equalizer_rounded, "Equalizer"),
                                  localcontainer(Icons.playlist_play_outlined,
                                      "Video Playlists"),
                                  localcontainer(
                                      Icons.language, "Network Stream"),
                                  localcontainer(
                                      Icons.network_cell_sharp, "Local Network"),
                                ],
                              ),
                          )
                          : const SizedBox.shrink(),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(14),
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          open2();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Online",
                                style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ))),
                            const Icon(
                              Icons.chevron_right,
                              color: Color(0xff5d6067),
                            ),
                          ],
                        ),
                      ),
                      online
                          ? Column(
                              children: [
                                hSpace(28),
                                localcontainer(
                                    Icons.history_outlined, "Watch History"),
                                hSpace(30),
                                localcontainer(
                                    Icons.live_tv_outlined, "Activate TV"),
                                hSpace(30),
                                localcontainer(Icons.bookmark_add_outlined,
                                    "Subscribed Channels"),
                                hSpace(30),
                                localcontainer(Icons.heart_broken_outlined,
                                    "My Preferences"),
                                hSpace(30),
                                localcontainer(
                                    Icons.shopping_cart_checkout_sharp,
                                    "Shopping List"),
                                hSpace(8),
                              ],
                            )
                          : const SizedBox.shrink()
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(14),
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          open3();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Music",
                                style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ))),
                            const Icon(
                              Icons.chevron_right,
                              color: Color(0xff5d6067),
                            ),
                          ],
                        ),
                      ),
                      music
                          ? Column(
                              children: [
                                hSpace(28),
                                localcontainer(Icons.favorite_border_rounded,
                                    "My Favorites"),
                                hSpace(30),
                                localcontainer(
                                    Icons.audiotrack_outlined, "My Playlists"),
                                hSpace(8),
                              ],
                            )
                          : const SizedBox.shrink()
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(14),
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          open4();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Settings",
                                style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ))),
                            const Icon(
                              Icons.chevron_right,
                              color: Color(0xff5d6067),
                            ),
                          ],
                        ),
                      ),
                      settings
                          ? Column(
                              children: [
                                hSpace(28),
                                localcontainer(Icons.hexagon_rounded,
                                    "Local Player Settings"),
                                hSpace(30),
                                localcontainer(
                                    Icons.download_for_offline_outlined,
                                    "Download Settings"),
                                hSpace(30),
                                localcontainer(
                                    Icons.screenshot_monitor_outlined,
                                    "Custom PIP Controls"),
                                hSpace(30),
                                localcontainer(
                                    Icons.child_care_outlined, "Kids Mode"),
                                hSpace(30),
                                localcontainer(
                                    Icons.content_paste_search_outlined,
                                    "Safe Content Mode"),
                                hSpace(30),
                                localcontainer(
                                    Icons.ad_units_outlined, "Ad preferences"),
                              ],
                            )
                          : const SizedBox.shrink(),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 12)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Legal",
                              style: GoogleFonts.mulish(
                                  textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ))),
                          const Icon(
                            Icons.chevron_right,
                            color: Color(0xff5d6067),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Help",
                              style: GoogleFonts.mulish(
                                  textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ))),
                          const Icon(
                            Icons.chevron_right,
                            color: Color(0xff5d6067),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

// Drawer iconDrawer() {
//   return Drawer(
//     width: 350,
//     backgroundColor: AppColors.greyMuted,
//     child: SafeArea(
//       child: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 14),
//               height: 64,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Colors.blueAccent,
//                     Colors.purple,
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   stops: [0.4, 0.7],
//                   tileMode: TileMode.clamp,
//                 ),
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const CircleAvatar(
//                     backgroundImage: AssetImage("assets/3135715.png"),
//                   ),
//                   wSpace(10),
//                   Text("Sign In",
//                       style: GoogleFonts.mulish(
//                           textStyle: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ))),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 76,
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   scrollDirection: Axis.horizontal,
//                   itemCount: actions.length,
//                   itemBuilder: (context, index) => floatIcons(
//                       actions[index]['title'], actions[index]['icon'])),
//             ),
//             Container(
//               margin: const EdgeInsets.all(8),
//               decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(8))),
//               child: Column(
//                 children: [
//                   hSpace(30),
//                   contents("WhatsApp Status Saver", Icons.whatsapp, true),
//                   hSpace(32),
//                   contents("App Language", Icons.sort_by_alpha_sharp, false),
//                   hSpace(32),
//                   contents("Content Language", Icons.g_translate, false),
//                   hSpace(32),
//                   contents("Dark Theme", Icons.dark_mode_outlined, false),
//                   hSpace(32),
//                   contents("Make Video Default", Icons.video_file, false),
//                   wSpace(30),
//                   hSpace(20),
//                 ],
//               ),
//             ),
//             Container(
//                 padding: EdgeInsets.all(14),
//                 margin: const EdgeInsets.all(8),
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(8))),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Local",
//                               style: GoogleFonts.mulish(
//                                   textStyle: const TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 15,
//                               ))),
//                           const Icon(
//                             Icons.chevron_right,
//                             color: Color(0xff5d6067),
//                           ),
//                         ],
//                       ),
//                     ),
//                     local
//                         ? Column(
//                             children: [
//                               hSpace(30),
//                               localcontainer(
//                                   Icons.lock_outline_sharp, "Private folder"),
//                               hSpace(32),
//                               localcontainer(
//                                   Icons.equalizer_rounded, "Equalizer"),
//                               hSpace(32),
//                               localcontainer(Icons.playlist_play_outlined,
//                                   "Video Playlists"),
//                               hSpace(32),
//                               localcontainer(Icons.language, "Network Stream"),
//                               hSpace(32),
//                               localcontainer(
//                                   Icons.network_cell_sharp, "Local Network"),
//                               wSpace(30),
//                             ],
//                           )
//                         : const SizedBox.shrink(),
//                   ],
//                 )),
//             Container(
//                 padding: EdgeInsets.all(14),
//                 margin: const EdgeInsets.all(8),
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(8))),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Online",
//                             style: GoogleFonts.mulish(
//                                 textStyle: const TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 15,
//                             ))),
//                         const Icon(
//                           Icons.chevron_right,
//                           color: Color(0xff5d6067),
//                         ),
//                       ],
//                     ),
//                     hSpace(28),
//                     localcontainer(Icons.history_outlined, "Watch History"),
//                     hSpace(30),
//                     localcontainer(Icons.live_tv_outlined, "Activate TV"),
//                     hSpace(30),
//                     localcontainer(
//                         Icons.bookmark_add_outlined, "Subscribed Channels"),
//                     hSpace(30),
//                     localcontainer(
//                         Icons.heart_broken_outlined, "My Preferences"),
//                     hSpace(30),
//                     localcontainer(
//                         Icons.shopping_cart_checkout_sharp, "Shopping List"),
//                     hSpace(8),
//                   ],
//                 )),
//             Container(
//                 padding: EdgeInsets.all(14),
//                 margin: const EdgeInsets.all(8),
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(8))),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Music",
//                             style: GoogleFonts.mulish(
//                                 textStyle: const TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 15,
//                             ))),
//                         const Icon(
//                           Icons.chevron_right,
//                           color: Color(0xff5d6067),
//                         ),
//                       ],
//                     ),
//                     hSpace(28),
//                     localcontainer(
//                         Icons.favorite_border_rounded, "My Favorites"),
//                     hSpace(30),
//                     localcontainer(Icons.audiotrack_outlined, "My Playlists"),
//                     hSpace(8),
//                   ],
//                 )),
//             Container(
//                 padding: EdgeInsets.all(14),
//                 margin: const EdgeInsets.all(8),
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(8))),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Settings",
//                             style: GoogleFonts.mulish(
//                                 textStyle: const TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 15,
//                             ))),
//                         const Icon(
//                           Icons.chevron_right,
//                           color: Color(0xff5d6067),
//                         ),
//                       ],
//                     ),
//                     hSpace(28),
//                     localcontainer(
//                         Icons.hexagon_rounded, "Local Player Settings"),
//                     hSpace(30),
//                     localcontainer(Icons.download_for_offline_outlined,
//                         "Download Settings"),
//                     hSpace(30),
//                     localcontainer(Icons.screenshot_monitor_outlined,
//                         "Custom PIP Controls"),
//                     hSpace(30),
//                     localcontainer(Icons.child_care_outlined, "Kids Mode"),
//                     hSpace(30),
//                     localcontainer(Icons.content_paste_search_outlined,
//                         "Safe Content Mode"),
//                     hSpace(30),
//                     localcontainer(Icons.ad_units_outlined, "Ad preferences"),
//                   ],
//                 )),
//             Container(
//                 padding: const EdgeInsets.all(2),
//                 margin: const EdgeInsets.all(8),
//                 decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(8))),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Legal",
//                             style: GoogleFonts.mulish(
//                                 textStyle: const TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 15,
//                             ))),
//                         const Icon(
//                           Icons.chevron_right,
//                           color: Color(0xff5d6067),
//                         ),
//                       ],
//                     ),
//                   ],
//                 )),
//             Container(
//                 padding: const EdgeInsets.all(2),
//                 margin: const EdgeInsets.all(8),
//                 decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(8))),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Help",
//                             style: GoogleFonts.mulish(
//                                 textStyle: const TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 15,
//                             ))),
//                         const Icon(
//                           Icons.chevron_right,
//                           color: Color(0xff5d6067),
//                         ),
//                       ],
//                     ),
//                   ],
//                 )),
//           ],
//         ),
//       ),
//     ),
//   );
// }

Row localcontainer(IconData icon, String name) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(
        icon,
        size: 20,
        color: const Color((0xff5d6067)),
      ),
      wSpace(14),
      Text(
        name,
        style: GoogleFonts.mulish(
            color: const Color(0xff5d6067),
            fontSize: 15,
            fontWeight: FontWeight.w400),
      ),
    ],
  );
}

Row contents(
  String title,
  IconData icon,
  bool rounded,
) {
  return Row(
    children: [
      rounded
          ? CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
              child: Icon(
                icon,
                size: 14,
                color: Colors.white,
              ))
          : Icon(
              icon,
              size: 20,
              color: const Color(0xff5d6067),
            ),
      wSpace(14),
      Text(
        title,
        style: GoogleFonts.mulish(
            color: const Color(0xff5d6067),
            fontSize: 15,
            fontWeight: FontWeight.w400),
      ),
    ],
  );
}

Widget floatIcons(String title, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(children: [
      hSpace(8),
      Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 0),
                  blurRadius: 3.0,
                  spreadRadius: 0.1,
                ),
              ]),
          child: Icon(
            icon,
            color: Colors.blue,
            size: 26,
          )),
      hSpace(8),
      Text(title,
          style: GoogleFonts.mulish(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff5d6067))))
    ]),
  );
}
