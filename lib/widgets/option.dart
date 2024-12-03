import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  const Option({super.key});

  @override
  State<Option> createState() {
    return _Option();
  }
}

class _Option extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        height: 80,
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: ListTile(
          title: Text('Option 1',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary)),
        ));
  }
}
