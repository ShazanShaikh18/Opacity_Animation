// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var myOpacity = 1.0;
//   bool isVisible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Animation'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedOpacity(
//               opacity: myOpacity,
//               curve: Curves.bounceInOut,
//               duration: Duration(seconds: 4),
//               child: Container(
//                 width: 200,
//                 height: 100,
//                 color: Colors.cyan,
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     if (isVisible) {
//                       myOpacity = 0.0; //invisible
//                       isVisible = false;
//                     } else {
//                       myOpacity = 1.0; //visible
//                       isVisible = true;
//                     }
//                   });
//                 },
//                 child: Text("Close"))
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var myOpacity = 1.0;
//   bool isVisible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Opacity Animation")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedOpacity(
//               curve: Curves.bounceIn,
//               opacity: myOpacity,
//               duration: Duration(seconds: 3),
//               // child: Container(
//               //   height: 100,
//               //   width: 200,
//               //   color: Colors.cyan,
//               // ),
//               child: SizedBox(
//                   height: 500,
//                   width: 400,
//                   child: Image.network(
//                       'https://www.forbesindia.com/media/images/2022/Aug/img_192351_viratkohli.jpg')),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     isVisible = isVisible;

//                     if (isVisible) {
//                       myOpacity = 0.0;
//                       isVisible = false;
//                     } else {
//                       myOpacity = 1.0;
//                       isVisible = true;
//                     }
//                   });
//                 },
//                 child: Text(
//                   "For Animation",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var myOpacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Opacity Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              curve: Curves.bounceInOut,
              opacity: myOpacity,
              duration: Duration(seconds: 3),
              child: SizedBox(
                  height: 600,
                  width: 350,
                  child: Image.asset(
                      fit: BoxFit.cover, 'assets/images/myPic1.jpg')),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    //myOpacity = 0.0;
                    if (isVisible) {
                      myOpacity = 0.0;
                      isVisible = false;
                    } else {
                      myOpacity = 1.0;
                      isVisible = true;
                    }
                  });
                },
                child: Text("For Animation"))
          ],
        ),
      ),
    );
  }
}
