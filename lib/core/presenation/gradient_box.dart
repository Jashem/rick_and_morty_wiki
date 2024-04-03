import 'package:flutter/material.dart';

import 'gradient_box_border.dart';

class GradientBox extends StatelessWidget {
  const GradientBox({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(4),
        border: const GradientBoxBorder(
          width: 0.5,
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(21, 191, 253, 0.7),
              Color.fromRGBO(132, 247, 41, 0.7),
            ],
          ),
        ),
      ),
      child: child,
    );
  }
}
