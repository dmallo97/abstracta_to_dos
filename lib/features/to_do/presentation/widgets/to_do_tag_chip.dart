import 'package:flutter/material.dart';

class ToDoTagChip extends StatelessWidget {
  final String label;
  final VoidCallback? onRemove;

  const ToDoTagChip({super.key, required this.label, this.onRemove});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(16),
        ),
        constraints: const BoxConstraints(maxHeight: 30),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onSecondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (onRemove != null)
              IconButton(
                icon: MediaQuery.removePadding(
                  context: context,
                  removeRight: true,
                  child: Icon(Icons.close, size: 16, color: Theme.of(context).colorScheme.onSecondary),
                ),
                onPressed: onRemove,
                padding: EdgeInsets.zero,
                splashRadius: 1,
                visualDensity: VisualDensity.compact,
              ),
          ],
        ),
      ),
    );
  }
}
