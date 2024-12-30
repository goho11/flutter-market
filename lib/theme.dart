import 'package:flutter/material.dart';

// 1
import 'package:google_fonts/google_fonts.dart';

// 2
// TextTheme textTheme() {
//   return TextTheme(
//     displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
//     displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
//     bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
//     bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
//     titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
//   );
// }
//
// // 3
// IconThemeData iconTheme() {
//   return const IconThemeData(
//     color: Colors.black,
//   );
// }
//
// // 4
// AppBarTheme appBarTheme() {
//   return AppBarTheme(
//     centerTitle: false,
//     color: Colors.white,
//     elevation: 0.0,
//     iconTheme: iconTheme(),
//     titleTextStyle: GoogleFonts.nanumGothic(
//       fontSize: 16,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//     ),
//   );
// }
//
// // 5
// BottomNavigationBarThemeData bottomNavigatorTheme() {
//   return const BottomNavigationBarThemeData(
//     selectedItemColor: Colors.orange,
//     unselectedItemColor: Colors.black54,
//     showUnselectedLabels: true,
//   );
// }
//
// 6
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // textTheme: textTheme(),
    // appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed, // 버튼 클릭시 애니메이션 효과 삭제
      showSelectedLabels: false, // 레이블 안쓰기 설정
      showUnselectedLabels: false,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black54,
      backgroundColor: Colors.white, // 바텀바 흰색
    ),
    primarySwatch: Colors.orange, // 앱 메인색상
  );
}
