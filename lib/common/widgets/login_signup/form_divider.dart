import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.isdark, required this.text,
  });

  final bool isdark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isdark ? TColors.darkGrey : TColors.grey,
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isdark ? TColors.darkGrey : TColors.grey,
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
