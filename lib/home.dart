import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo/qr_generator.dart';

import 'chart.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  Uint8List? image = null;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return ChartPage();
            }));
          }, icon: Icon(Icons.bar_chart, color: Colors.blueAccent,)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return QrPage();
            }));

      },

        child: Icon(Icons.qr_code),

      ),
      body: Column(
        children: [
          image!=null?  Image.memory(image!) : Container(
            child: Text("No Image"),
          ),

          ElevatedButton(onPressed: () async {

            ImagePicker imagePicker = ImagePicker();
            final XFile? imageFile = await imagePicker.pickImage(source: ImageSource.gallery);
            final imagePath = imageFile?.path;
            final data = await File(imagePath!).readAsBytes();
            setState(() {
              image = data;
            });

          }, child: Text("Uplode"))

        ],
      ),
    );

  }



}

