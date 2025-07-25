import 'package:abstracta_to_dos/config/style/app_styles.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.content, this.onTap});

  final Widget content;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: EdgeInsets.all(10),
          child: Ink(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            decoration: AppStyles.cardDecorationStyle,
            child: ClipRRect(
              borderRadius: AppStyles.cardDecorationStyle.borderRadius!,
              child: InkWell(
                onTap: onTap,
                borderRadius: AppStyles.cardDecorationStyle.borderRadius!.resolve(Directionality.of(context)),
                child: content,
              ),
            ),
          ),
        );
      },
    );
  }
}
