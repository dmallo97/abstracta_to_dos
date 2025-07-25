import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:abstracta_to_dos/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class StatsCard extends CustomCard {
  StatsCard({super.key, required String title, required dynamic data})
    : super(
        content: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: AppFontStyles.getBodyTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeightType.semiBold.getFontWeight(),
                  color: AppColors.darkGrey,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  data.toString(),
                  textAlign: TextAlign.end,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppFontStyles.getBodyTextStyle.copyWith(
                    fontSize: data.toString().length > 6 ? 16 : 36,
                    fontWeight: FontWeightType.bold.getFontWeight(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
