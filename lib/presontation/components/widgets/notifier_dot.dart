

import 'package:flutter/material.dart';

class NotifierContainerComponent extends StatelessWidget {
  const NotifierContainerComponent({
    super.key, required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 8, height: 8,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),);
  }
}