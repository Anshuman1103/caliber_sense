import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  const Option({super.key, required this.optionText});

  final String optionText;

  @override
  State<Option> createState() {
    return _OptionState();
  }
}

class _OptionState extends State<Option> {
  bool _isSelected = false; // Tracks if the option is selected

  void _handleTap(BuildContext context) {
    setState(() {
      _isSelected = !_isSelected; // Toggle selection
    });

    // Show a SnackBar with the selected option
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_isSelected
            ? '${widget.optionText} selected'
            : '${widget.optionText} deselected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _handleTap(context),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 70,
        ),
        child: Card(
          elevation: 4,
          color: _isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surface,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                widget.optionText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: _isSelected
                          ? Theme.of(context).colorScheme.onPrimary
                          : Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
