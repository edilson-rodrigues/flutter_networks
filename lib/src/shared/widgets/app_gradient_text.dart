import 'package:flutter/material.dart';

class AppGradientText extends StatelessWidget {
  /// exemplo
  /// final gradient = LinearGradient(
  /// colors: [Colors.pink, Colors.green],
  ///);
  const AppGradientText(
    this.data, {
    Key? key,
    required this.gradient,
    this.style,
  }) : super(key: key);
  final LinearGradient gradient;
  final String data;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(Offset.zero & bounds.size);
      },
      child: Text(data, style: style),
    );
  }
}
