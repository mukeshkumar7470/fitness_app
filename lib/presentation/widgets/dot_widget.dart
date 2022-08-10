import 'package:flutter/material.dart';
import '../../core/theme/colors.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? kFirstColor,
      ),
    );
  }
}
