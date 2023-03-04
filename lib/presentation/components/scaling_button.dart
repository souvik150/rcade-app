import 'package:flutter/material.dart';
import 'package:rcade/constants/colors.dart';

class ScalingButton extends StatefulWidget {
  const ScalingButton({
    Key? key,
    required this.child,
    this.scaleFactor = 1.2,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.easeInOut,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final double scaleFactor;
  final Duration duration;
  final Curve curve;
  final VoidCallback? onPressed;

  @override
  _ScalingButtonState createState() => _ScalingButtonState();
}

class _ScalingButtonState extends State<ScalingButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: widget.duration,
    vsync: this,
  )..repeat(reverse: true);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: widget.scaleFactor - (_controller.value * 0.2),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 15, bottom: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: widget.onPressed,
            child: widget.child,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
