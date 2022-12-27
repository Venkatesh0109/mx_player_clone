import 'package:flutter/material.dart';
import 'package:flutter_application_2/data.dart';
import 'package:google_fonts/google_fonts.dart';

Widget hSpace(double h) {
  return SizedBox(height: h);
}

Widget wSpace(double w) {
  return SizedBox(width: w);
}

Column spawnfolder(int index) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          wSpace(6),
          const Icon(
            Icons.folder,
            size: 78,
            color: Color(0xffe0e4e7),
          ),
          wSpace(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              Text(Data.folderList[index]['title'],
                  style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400))),
              const Padding(padding: EdgeInsets.only(top: 6)),
              Text("${Data.folderList[index]['count']} video",
                  style: GoogleFonts.mulish(
                      textStyle:
                          const TextStyle(fontSize: 12, color: Colors.grey))),
            ],
          ),
        ],
      ),
    ],
  );
}
