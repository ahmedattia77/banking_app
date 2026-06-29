import 'package:flutter/material.dart';

class AmountSliderCard extends StatefulWidget {
  final double initialValue;
  final double min;
  final double max;
  final ValueChanged<double>? onChanged;

  const AmountSliderCard({
    super.key,
    this.initialValue = 4600.0,
    this.min = 0.0,
    this.max = 10000.0,
    this.onChanged,
  });

  @override
  State<AmountSliderCard> createState() => _AmountSliderCardState();
}

class _AmountSliderCardState extends State<AmountSliderCard> {
  late double _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: const Color(0xFF181B2A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amount: \$${_currentValue.toStringAsFixed(2)}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 6.0,
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white10,
              thumbColor: const Color(0xFF007AFF),
              overlayColor: const Color(0xFF007AFF).withValues(alpha: 0.12),
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 10.0,
                disabledThumbRadius: 10.0,
                elevation: 0,
              ),
              trackShape: const RoundedRectSliderTrackShape(),
            ),
            child: Slider(
              value: _currentValue,
              min: widget.min,
              max: widget.max,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              },
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${widget.min.toInt()}',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  '\$${_currentValue.toInt()}',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  '\$${widget.max.toInt()}',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}