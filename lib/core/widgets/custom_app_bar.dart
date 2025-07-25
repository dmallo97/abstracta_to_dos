import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:abstracta_to_dos/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.logoOpacity = 0.2,
    this.automaticallyImplyLeading = true,
    this.content,
  });

  final String? title;
  final Widget? content;
  final double logoOpacity;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: _AppBarContent(
        text: title,
        logoOpacity: logoOpacity,
        content: content,
        automaticallyImplyLeading: automaticallyImplyLeading,
      ),
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarContent extends StatelessWidget {
  const _AppBarContent({this.text, required this.logoOpacity, required this.automaticallyImplyLeading, this.content});

  final String? text;
  final Widget? content;
  final double logoOpacity;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (content != null) content!,
          if (content == null && text != null)
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    automaticallyImplyLeading ? const EdgeInsets.only(left: 60.0) : const EdgeInsets.only(left: 10.0),
                child: Text(
                  text!,
                  style: AppFontStyles.getTitleBold.copyWith(color: Theme.of(context).colorScheme.onSurface),
                ),
              ),
            ),
          Opacity(
            opacity: logoOpacity,
            child: Transform.scale(
              scale: 0.3,
              child: SvgPicture.asset(
                Assets.lib.resources.images.abstractaLogo,
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
