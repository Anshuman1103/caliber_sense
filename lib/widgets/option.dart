import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  const Option({super.key, required this.optionText});

  final String optionText;

  @override
  State<Option> createState() {
    return _Option();
  }
}

class _Option extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 320,
        height: 80,
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Center(
          child: Text(widget.optionText,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary)),
        ),
      ),
    );
  }
}
