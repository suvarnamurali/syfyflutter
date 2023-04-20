import 'package:flutter/material.dart';
import 'package:syfiapp/barcode.dart';
import 'package:syfiapp/cal.dart';
import 'package:syfiapp/charts.dart';
import 'package:syfiapp/item.dart';
import 'package:syfiapp/pdfviewer.dart';
import 'package:syfiapp/scanner.dart';

class SynfusionDemo extends StatelessWidget {
  const SynfusionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Synfusion Demo'),
        ),
        body: ListView(
          children: [
            DemoItems(
              listTitle: 'Barcode generator',
              demoRoute: BarcodeScanner(),
            ),
            DemoItems(
              listTitle: 'QRcode generator',
              demoRoute: QRcodeGenerator(),
            ),
            DemoItems(
              listTitle: 'Calender',
              demoRoute: Calendar(),
            ),
            DemoItems(
              listTitle: 'PDF viewer',
              demoRoute: PDFViewer(),
            ),
            DemoItems(
              listTitle: 'Chart',
              demoRoute: ChartDemo(),
            ),
          ],
        ));
  }
}