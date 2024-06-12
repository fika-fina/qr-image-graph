import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ChartPage extends StatefulWidget{
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chart Page"),
      ),

      body: PieChart(

          dataMap: {
        "Yes":10,
        "No":20,
        "Hello":90
      })
    );

  }
}