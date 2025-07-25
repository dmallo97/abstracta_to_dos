import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.items});

  final List<BottomNavBarItem> items;
  static const double navBarClearance = 100;

  @override
  Widget build(BuildContext context) {
    final navBarMargin = MediaQuery.of(context).size.width / 8;
    return Container(
      height: 48,
      margin: EdgeInsets.only(left: navBarMargin, right: navBarMargin, bottom: navBarMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 7, offset: const Offset(0, 6), color: Colors.black.withValues(alpha: 0.24))],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: items),
    );
  }

  static SliverToBoxAdapter sliverBottomSpacer() => const SliverToBoxAdapter(child: SizedBox(height: navBarClearance));

  static SizedBox bottomSpacer() => const SizedBox(height: navBarClearance);
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key, required this.label, required this.onTap, this.icon, required this.isSelected});

  final Widget? icon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  BoxDecoration? itemBackgroundDecoration(BuildContext context) =>
      isSelected
          ? BoxDecoration(color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(50))
          : null;

  TextStyle itemTextStyle(BuildContext context) {
    final textStyle = AppFontStyles.getBodySemiBold.copyWith(fontSize: 14);
    return isSelected
        ? textStyle.copyWith(color: Theme.of(context).colorScheme.onPrimary)
        : textStyle.copyWith(color: Theme.of(context).extension<ThemeCustomColors>()!.body);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(4),
          alignment: Alignment.center,
          decoration: itemBackgroundDecoration(context),
          padding: const EdgeInsets.all(8),
          child:
              icon != null
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.square(
                        dimension: 14,
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(itemTextStyle(context).color!, BlendMode.srcIn),
                          child: icon,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(child: Text(label, overflow: TextOverflow.ellipsis, style: itemTextStyle(context))),
                    ],
                  )
                  : Center(child: Text(label, overflow: TextOverflow.ellipsis, style: itemTextStyle(context))),
        ),
      ),
    );
  }
}
