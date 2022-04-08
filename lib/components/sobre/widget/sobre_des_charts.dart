import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:hexcolor/hexcolor.dart';

class DesChartsPage extends StatefulWidget {
  @override
  _DesChartsPageState createState() => _DesChartsPageState();
}

class _DesChartsPageState extends State<DesChartsPage> {
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
        left: 80,
        child: Column(
          children: [
            Text('Design'),
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
      GDPData(
        'Adobe Photoshop',
        300,
        HexColor("#00C2F7"),
      ),
      GDPData('Adobe Ilustrator', 300, HexColor('#F58623')),
      GDPData('Adobe After Effects', 300, HexColor('#704895')),
      GDPData('Adobe Premiere', 200, HexColor('#ED94FF')),
      GDPData('Figma', 100, HexColor('#0AC97F')),
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
