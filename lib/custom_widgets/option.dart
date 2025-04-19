import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.optionText,
    required this.isSelected,
    required this.onOptionSelected,
  });

  final String optionText;
  final bool isSelected;
  final VoidCallback onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onOptionSelected,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 70,
        ),
        child: Card(
          elevation: 4,
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surface,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                optionText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
