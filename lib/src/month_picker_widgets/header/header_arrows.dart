import 'package:flutter/material.dart';

class HeaderArrows extends StatelessWidget {
  const HeaderArrows({
    super.key,
    this.arrowcolors,
    this.arrowSize,
    required this.onUpButtonPressed,
    required this.onDownButtonPressed,
    required this.upState,
    required this.downState,
  });
  final Color? arrowcolors;
  final VoidCallback onUpButtonPressed, onDownButtonPressed;
  final bool upState, downState;
  final double? arrowSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.keyboard_arrow_up_rounded,
            color: upState ? arrowcolors : arrowcolors!.withOpacity(0.5),
            size: arrowSize ?? 30,
          ),
          onPressed: upState ? onUpButtonPressed : null,
        ),
        IconButton(
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: downState ? arrowcolors : arrowcolors!.withOpacity(0.5),
            size: arrowSize ?? 30,
          ),
          onPressed: downState ? onDownButtonPressed : null,
        ),
      ],
    );
  }
}
