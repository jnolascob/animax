// import 'package:flutter/material.dart';

// import 'items/loader.dart';

// void main() {
//   runApp(
//     new MaterialApp(
//       home: new Home(),
//     )
//   );
// }

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       backgroundColor: Colors.orange,
//       body: new Center(
//         child: new Loader()
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashPage(),
  ));
}
