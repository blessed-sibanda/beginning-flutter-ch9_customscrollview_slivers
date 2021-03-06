import 'package:flutter/material.dart';

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(
          3,
          (index) => ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
              backgroundColor: Colors.lightGreen,
              foregroundColor: Colors.white,
            ),
            title: Text('Row ${index + 1}'),
            subtitle: Text('Subtitle Row ${index + 1}'),
            trailing: const Icon(Icons.star_border),
          ),
        ),
      ),
    );
  }
}
