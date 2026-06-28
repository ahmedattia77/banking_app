
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BalanceChartWidget extends StatelessWidget {
  const BalanceChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Current Balance',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          '\$8,545.00',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 180,
          child: LineChart(
            LineChartData(
              gridData: const FlGridData(show: false),
              titlesData: const FlTitlesData(
                show: true,
                rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              borderData: FlBorderData(show: false),
              minX: 0,
              maxX: 5,
              minY: 0,
              maxY: 5,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 1.5),
                    const FlSpot(1, 2.3),
                    const FlSpot(2, 1.2),
                    const FlSpot(3, 3.8),
                    const FlSpot(4, 2.2),
                    const FlSpot(5, 4.2),
                  ],
                  isCurved: true,
                  curveSmoothness: 0.50,
                  color: const Color(0xFF007AFF),
                  barWidth: 4,
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, percent, barData, index) {
                      if (index == 3) {
                        return FlDotCirclePainter(
                          radius: 8,
                          color: const Color(0xFF007AFF),
                          strokeWidth: 3,
                          strokeColor: Colors.white,
                        );
                      }
                      return FlDotCirclePainter(radius: 0, color: Colors.transparent);
                    },
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF007AFF).withValues(alpha:0.2),
                        const Color(0xFF007AFF).withValues(alpha:0.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildMonthItem('Oct', isSelected: false),
            _buildMonthItem('Nov', isSelected: false),
            _buildMonthItem('Dec', isSelected: false),
            _buildMonthItem('Jan', isSelected: true),
            _buildMonthItem('Feb', isSelected: false),
            _buildMonthItem('Mar', isSelected: false),
          ],
        ),
      ],
    );
  }

  Widget _buildMonthItem(String month, {required bool isSelected}) {
    return isSelected
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF007AFF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              month,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              month,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
  }
}