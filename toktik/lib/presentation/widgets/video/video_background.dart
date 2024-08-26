import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;
  const VideoBackground({
    super.key,
    this.colors = const [
      Colors.transparent,
      Colors.black87,
    ],
    this.stops = const [0.0, 0.5],
  }) : assert(colors.length == stops.length,
            'Stop and color length must be equal');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: stops,
            colors: colors,
          ),
        ),
      ),
    );
  }
}
