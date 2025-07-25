import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:flutter/material.dart';

class AddTagChipButton extends StatelessWidget {
  AddTagChipButton({super.key, required this.label, this.icon, this.onTagSubmitted});

  final String label;
  final IconData? icon;
  final Function(String)? onTagSubmitted;
  final TextEditingController _newTagController = TextEditingController();

  Text buildLabel(BuildContext context) =>
      Text(label, style: AppFontStyles.bodyRegular.copyWith(color: Theme.of(context).colorScheme.primary));

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 30),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
          ),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              showModalBottomSheet(
                context: context,
                elevation: 40,
                useRootNavigator: true,
                showDragHandle: true,
                isScrollControlled: true,
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12,
                          children: [
                            Text('Add a tag', style: AppFontStyles.getTitleBold.copyWith(fontSize: 20)),
                            TextFormField(
                              controller: _newTagController,
                              autofocus: true,
                              decoration: InputDecoration(labelText: 'Enter tag name'),
                            ),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: FilledButton(
                                onPressed: () {
                                  final newTag = _newTagController.text.trim();
                                  if (newTag.isNotEmpty) {
                                    onTagSubmitted?.call(newTag);
                                    Navigator.of(context).pop();
                                  }
                                },
                                child: Text('Add tag'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Center(
              child:
                  icon != null
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(icon, color: Theme.of(context).colorScheme.primary, size: 18),
                          const SizedBox(width: 2),
                          buildLabel(context),
                        ],
                      )
                      : buildLabel(context),
            ),
          ),
        ),
      ),
    );
  }
}
