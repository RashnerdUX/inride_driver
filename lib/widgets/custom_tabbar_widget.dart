import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:fl_chart/fl_chart.dart';

class EarningsTabView extends StatelessWidget {
  const EarningsTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        width: double.infinity,
        height: 260,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xffe4ebfa),
                  offset: Offset(0, 8),
                  blurRadius: 24),
            ]),
        child: Column(
          children: [
            Container(
              width: 186,
              height: 28,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xffE2E7F1),
                border: Border.all(color: Colors.transparent),
              ),
              child: TabBar(
                  indicatorWeight: 0,
                  labelStyle: const TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.all(2),
                  tabs: earningsHistoryTabs),
            ),
            Space.h(12),
            SizedBox(
                width: double.infinity,
                height: 168,
                child: TabBarView(children: earningsTabView)),
          ],
        ),
      ),
    );
  }
}

List<Widget> earningsHistoryTabs = [
  const Tab(
    text: "Day",
  ),
  const Tab(text: "Weekly"),
  const Tab(text: "Monthly")
];

List<Widget> earningsTabView = [
  Container(
    width: double.infinity,
    padding: const EdgeInsets.all(8),
    child: buildBarChart(),
  ),
  Container(
    width: double.infinity,
    color: Colors.green,
  ),
  Container(
    width: double.infinity,
    color: Colors.red,
  ),
];

Widget buildBarChart() {
  const Color rodColor = Palette.accentTextColor;

  return BarChart(
    BarChartData(
        rangeAnnotations: RangeAnnotations(horizontalRangeAnnotations: [
          HorizontalRangeAnnotation(y1: 10, y2: 20),
        ]),
        maxY: 2500,
        minY: 0,
        alignment: BarChartAlignment.center,
        groupsSpace: 36,
        barTouchData: BarTouchData(enabled: false),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [
            BarChartRodData(toY: 1500, color: rodColor),
          ]),
          BarChartGroupData(x: 1, barRods: [
            BarChartRodData(toY: 2200, color: rodColor),
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(toY: 800, color: rodColor),
          ]),
          BarChartGroupData(x: 3, barRods: [
            BarChartRodData(toY: 2200, color: rodColor),
          ]),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(toY: 1300, color: rodColor),
          ]),
          BarChartGroupData(x: 5, barRods: [
            BarChartRodData(toY: 600, color: rodColor),
          ]),
          BarChartGroupData(x: 6, barRods: [
            BarChartRodData(toY: 1700, color: rodColor),
          ]),
        ],
        borderData: FlBorderData(
          show: true,
          border: const Border(
            bottom: BorderSide(
              color: Color(0xffd5d6d9),
            ),
          ),
        ),
        titlesData: FlTitlesData(
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => bottomTitles(value, meta),
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => leftTitles(value, meta),
              reservedSize: 40,
              interval: 1,
            ),
          ),
        ),
        gridData: FlGridData(
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) => const FlLine(
            color: Color(0xffd5d6d9),
            strokeWidth: 1,
          ),
        )),
  );
}

Widget bottomTitles(double value, TitleMeta meta) {
  String text;
  switch (value.toInt()) {
    case 0:
      text = "Mo";
    case 1:
      text = 'Tu';
    case 2:
      text = 'We';
    case 3:
      text = 'Th';
    case 4:
      text = 'Fr';
    case 5:
      text = 'Sa';
    case 6:
      text = 'Su';
    default:
      text = 'D';
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 8,
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    ),
  );
}

Widget leftTitles(double value, TitleMeta meta) {
  String text;

  switch (value.toInt()) {
    case 0:
      text = '500';
    // case 500:
    //   text = '500';
    case 1000:
      text = '1000';
    case 2000:
      text = '2000';
      break;
    default:
      text = '';
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 8,
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
