import 'package:data_base/web_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePage_Page();
}

class HomePage_Page extends State<HomePage> {
  String _scanBarcode = 'Unknown';
  Future<void> scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#FF0000', 'Cancel', false, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WebViewExample(barcodeScanRes)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child: Stack(children: [
              Container(
                height: 670,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(color: Colors.orange, width: 1)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20, top: 25),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      scanQR();
                    });
                  },
                  child: Container(
                    height: 620,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
