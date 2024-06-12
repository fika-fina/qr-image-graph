import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPage extends StatefulWidget{
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();

}

class _QrPageState extends State<QrPage>{

  TextEditingController qrData = TextEditingController();
  //String qrString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr Generator"),
      ),

      body: Column(
        children: [
          qrData.text != ""? QrImageView(
            size: 100.0,
              data: qrData.text) : Container(child: Text("No qr"),),
          TextField(
            controller: qrData,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              qrData;
            });
          }, child: Text("Generate"))
        ],
      ),
    );

  }

}