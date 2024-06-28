import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Pie Chart Tutorial",
      ),
    );
  }

  Widget _buildUI() {
    return Center(
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              // pieTouchData: PieTouchData(
              //   touchCallback: (FlTouchEvent event, pieTouchResponse) {
              //     setState(() {
              //       if (!event.isInterestedForInteractions ||
              //           pieTouchResponse == null ||
              //           pieTouchResponse.touchedSection == null) {
              //         touchedIndex = -1;
              //         return;
              //       }
              //       touchedIndex =
              //           pieTouchResponse.touchedSection!.touchedSectionIndex;
              //     });
              //   },
              // ),
              sections: piechartSection(),
              sectionsSpace: 0,
              centerSpaceRadius: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 265, left: 230),
            child: Text("মোট স্টক \n ৩৬৬০"),
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> piechartSection() {
    List<Color> sectionColors = [
      const Color(0xFFFABC70),
      const Color(0xFF697CF2),
      const Color(0xFF2F5596),
      const Color(0xFFAB3D3D),
    ];

    // List<IconData> sectionIcons = [
    //   Icons.business,
    //   Icons.shopping_bag,
    //   Icons.local_grocery_store,
    //   Icons.house,
    // ];

    return List.generate(
      4,
      (i) {
        double value = (i + 3.1) * 10;
        // final isTouched = i == touchedIndex;
        const radius = 30.0;
        const fontSize = 13.0;
        // const widgetSize = 40.0;
        return PieChartSectionData(
          color: sectionColors[i],
          // value: value,
          // title: '$value%',
          radius: radius,
          titleStyle: const TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(
              0xffffffff,
            ),
          ),
          // badgeWidget: CustomBadge(
          //   // icon: sectionIcons[i],
          //   size: widgetSize,
          //   borderColor: Colors.black,
          // ),
          // badgePositionPercentageOffset: 0.98,
        );
      },
    );
  }
}
