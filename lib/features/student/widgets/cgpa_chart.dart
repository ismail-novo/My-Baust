import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CGPAChart extends StatelessWidget {

  final double cgpa;

  const CGPAChart({
    super.key,
    required this.cgpa,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: 250,

      child: PieChart(

        PieChartData(

          sections: [

            PieChartSectionData(
              value: cgpa,
              title: cgpa.toString(),
              radius: 80,
            ),

            PieChartSectionData(
              value: 4 - cgpa,
              title: '',
              radius: 70,
            ),
          ],
        ),
      ),
    );
  }
}