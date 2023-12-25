import 'package:flutter/material.dart';

class FlTextButton extends StatelessWidget {
  const FlTextButton(
      {super.key, required this.onPressed, required this.child, this.padding});

  final VoidCallback onPressed;
  final Widget child;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20)),
        child: child,
      ),
    );
  }
}
