import 'package:flutter/material.dart';
import 'package:run/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:run/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:run/util/constants/colors%20copy.dart';

import '../../../common/widgets/custom_shapes/containers/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          TPrimaryHeaderContainer(
            child: Container()
          )
        ]),
      ),
    );
  }
}

