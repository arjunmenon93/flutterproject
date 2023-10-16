import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/luck.dart';

class ChartData {
  final String month;
  final int sales;

  ChartData(this.month, this.sales);
}

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('sales').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!.docs.map((doc) {
            final month = doc['month'];
            final sales = doc['sales'];
            return ChartData(month, sales);
          }).toList();

          final series = [
            charts.Series(
              id: 'Sales',
              data: data,
              domainFn: (ChartData sales, _) => sales.month,
              measureFn: (ChartData sales, _) => sales.sales,
            )
          ];

          return charts.BarChart(series);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
