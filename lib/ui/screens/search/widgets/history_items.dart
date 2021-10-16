import 'package:flutter/material.dart';

class HistoryItems extends StatelessWidget {
  const HistoryItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: const [
        _HistoryItem(text: "wheat flour"),
        _HistoryItem(text: "sugar"),
        _HistoryItem(text: "vinegar"),
        _HistoryItem(text: "cherry sapling"),
        _HistoryItem(text: "paprika"),
        _HistoryItem(text: "union"),
      ],
    );
  }
}

class _HistoryItem extends StatelessWidget {
  const _HistoryItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Text(text),
      onSelected: (value) {},
      onDeleted: () {},
      backgroundColor: Colors.white,
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.5),
    );
  }
}
