import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/clippers/curved_edges_widget.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circularcontainer.dart';

import '../../../../utils/constants/colors.dart';

class TprimaryHeaderContainer extends StatelessWidget {
  const TprimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        padding: EdgeInsets.all(0),
        color: TColors.primary,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Stack(
            //appbar
            //searchBar
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TcircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 180,
                  right: -300,
                  child: TcircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              child
            ],
          ),
        ),
      ),
    );
  }
}
