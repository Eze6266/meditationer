import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [Colors.cyan, Colors.blue];

  bool showAvg = false;

  late num monCount;
  late num tuesCount;
  late num wedCount;
  late num thursCount;
  late num friCount;
  late num satCount;
  late num sunCount;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    // _loadStat();
  }

  Future<void> _loadStat() async {
    final prefs = await SharedPreferences.getInstance();

    monCount = prefs.getInt('monCount') ?? 0;
    tuesCount = prefs.getInt('tueCount') ?? 0;
    wedCount = prefs.getInt('wedCount') ?? 0;
    thursCount = prefs.getInt('thuCount') ?? 0;
    friCount = prefs.getInt('friCount') ?? 0;
    satCount = prefs.getInt('satCount') ?? 0;
    sunCount = prefs.getInt('sunCount') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadStat(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.70,
                  child: Padding(
                    padding:  EdgeInsets.only(
                      right: 18.w,
                      left: 12.w,
                      top: 24.h,
                      bottom: 12.h,
                    ),
                    child: LineChart(
                      mainData(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 64.w,
                  height: 40.h,
                  child: TextButton(
                    onPressed: () {
                      if (mounted) {
                        setState(() {
                          showAvg = !showAvg;
                        });
                      }
                    },
                    child: Text(
                      'Tuned in',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: showAvg
                            ? Colors.black87.withOpacity(0.5)
                            : Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const CupertinoActivityIndicator(
              color: Colors.black87,
            );
          }
        });
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = TextStyle(
      fontWeight: FontWeight.w300,
      color: Colors.black87,
      fontSize: 14.sp,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text =  Text('Mon', style: style);
        break;
      case 4:
        text =  Text('Tue', style: style);
        break;
      case 6:
        text =  Text('Wed', style: style);
        break;
      case 8:
        text =  Text('Thu', style: style);
        break;
      case 10:
        text =  Text('Fri', style: style);
        break;
      case 12:
        text =  Text('Sat', style: style);
        break;
      case 14:
        text =  Text('Sun', style: style);
        break;
      default:
        text =  Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    List<int> numbersList = [
      monCount.toInt(),
      tuesCount.toInt(),
      wedCount.toInt(),
      thursCount.toInt(),
      friCount.toInt(),
      satCount.toInt(),
      sunCount.toInt()
    ];

    int maxNumber = numbersList.reduce((a, b) => a > b ? a : b);

    final topInterval = (maxNumber / 3).ceil();
    final firstNum = topInterval;
    final secondNum = firstNum + topInterval;
    final thirdNum = secondNum + topInterval;
    const style = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black87);
    String text;
    switch (value.toInt()) {
      case 2:
        text = '$firstNum';
        break;
      case 4:
        text = '$secondNum';
        break;
      case 6:
        text = '$thirdNum';
        break;

      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  LineChartData mainData() {
    List<int> numbersList = [
      monCount.toInt(),
      tuesCount.toInt(),
      wedCount.toInt(),
      thursCount.toInt(),
      friCount.toInt(),
      satCount.toInt(),
      sunCount.toInt()
    ];
    int maxNumber = numbersList.reduce((a, b) => a > b ? a : b);
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.black87,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.black87,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 15,
      minY: 0,
      maxY: 7,
      lineBarsData: [
        LineChartBarData(
          spots: [
            const FlSpot(
              0,
              0,
            ),
            FlSpot(2, monCount.toDouble() * 2),
            FlSpot(4, tuesCount.toDouble() * 2),
            FlSpot(6, wedCount.toDouble() * 2),
            FlSpot(8, thursCount.toDouble() * 2),
            FlSpot(10, friCount.toDouble() * 2),
            FlSpot(12, satCount.toDouble() * 2),
            FlSpot(14, sunCount.toDouble() * 2),
            const FlSpot(15, 0),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

}