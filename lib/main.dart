// import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:lottie/lottie.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:photo_view/photo_view.dart';
// import 'package:hexcolor/hexcolor.dart';


// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         builder: (context, child) => ResponsiveBreakpoints.builder(
//               child: child!,
//               breakpoints: [
//                 const Breakpoint(start: 0, end: 450, name: MOBILE),
//                 const Breakpoint(start: 451, end: 800, name: TABLET),
//                 const Breakpoint(start: 801, end: 1920, name: DESKTOP),
//                 const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
//               ],
//             ),
//         initialRoute: "/",
//         home: HomePage());
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool switchThemeValue = false;
//   final List<String> buttons = ['Story', 'Work', 'Skills', 'Connect'];
//   @override
//   Widget build(BuildContext context) {
//     double heightOfDevice = MediaQuery.of(context).size.height;
//     double widthOfDevice = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//               top: 5,
//               width: widthOfDevice,
//               child: Center(
//                 child: Container(
//                   width: widthOfDevice / 1.25,
//                   height: 40,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       border: Border.all(color: HexColor("C9DABF"))),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               height: 20,
//                               width: 20,
//                             ),
//                             Text("Rishabh Hatlunkar")
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             buttonsSelect('Story'),
//                             buttonsSelect('Works'),
//                             buttonsSelect('Skills'),
//                             buttonsSelect('Connect')
//                             Switch(
//                               value: switchThemeValue,
//                               onChanged: (value) => peformSwitchTheme(value),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//           ),
//           Positioned(
//             top: 0,
//             right: 0,
//             left: 0,
//             child: Container(
//               width: widthOfDevice,
//               child: SingleChildScrollView(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buttonsSelect(String name){
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Container(
//           height: 50,
//           child: Center(child: Text(name)),
//         ),
//       );
//   }

//   void peformSwitchTheme(bool value){
//     setState(() {
//       switchThemeValue = value;
//     });
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}