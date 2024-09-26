import 'package:flutter/material.dart';
import 'package:run/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class TCurveEdgesdWidget extends StatelessWidget {
  const TCurveEdgesdWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TCustomCurvedEdges(), // Tạo bo tròn ở 2 góc
        child: child);
  }
}
