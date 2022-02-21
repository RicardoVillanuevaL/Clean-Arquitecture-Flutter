// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:flutter/material.dart';
import 'package:new_application/ui/pages/home/homePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String lecturaQR = "Lectura DNI";
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   Barcode? result;
//   QRViewController? controller;

//   @override
//   void reassemble() {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       controller!.pauseCamera();
//     } else if (Platform.isIOS) {
//       controller!.resumeCamera();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Expanded(
//               flex: 5,
//               child: QRView(
//                 key: qrKey,
//                 onQRViewCreated: _onQRViewCreated,
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Center(
//                 child: (result != null)
//                     ? Text(
//                         'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
//                     : const Text('Scan a code'),
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ValidateQR(link: result?.code) ) );
//         },
//         child: const Icon(Icons.scanner),
//       ),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }

// class ValidateQR extends StatefulWidget {
//   final String? link;
//   const ValidateQR({Key? key, this.link}) : super(key: key);

//   @override
//   _ValidateQRState createState() => _ValidateQRState();
// }

// class _ValidateQRState extends State<ValidateQR> {
//   String? data;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     data = widget.link;
//     print(data);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Validacion de QR'),
//       ),
//       body: Center(
//         child: Text(data ?? 'NO HAY DATA'),
//       ),
//     );
//   }
// }
