import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:hexcolor/hexcolor.dart';

class DevChartsPage extends StatefulWidget {
  @override
  _DevChartsPageState createState() => _DevChartsPageState();
}

class _DevChartsPageState extends State<DevChartsPage> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(alignment: AlignmentDirectional.center, children: [
      SfCircularChart(
          legend: Legend(
              isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            DoughnutSeries<GDPData, String>(
                innerRadius: '80%',
                pointColorMapper: (GDPData data, _) => data.pointColor,
                dataSource: _chartData,
                xValueMapper: (GDPData data, _) => data.continent,
                yValueMapper: (GDPData data, _) => data.gdp,
                explodeAll: true,
                explodeIndex: 10,
                dataLabelSettings: DataLabelSettings(isVisible: false),
                enableTooltip: true),
          ]),
      Positioned(
        left: 85,
        child: Column(
          children: [
            Text('Dev'),
            SizedBox(height: 3),
            Text(
              'Skills',
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      )
    ])));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('html/CSS', 300, HexColor('#F58623')),
      GDPData('Flutter', 200, HexColor('#06589C')),
      GDPData('Dart', 150, HexColor('#3FBEF7')),
      GDPData('JavaScript               ', 150, HexColor('#F7DF1E')),
      GDPData('Wordpress', 400, HexColor('#1D88B8')),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp, this.pointColor);
  final String continent;
  final int gdp;
  final Color pointColor;
}
