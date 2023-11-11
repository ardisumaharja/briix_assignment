import 'package:briix_assignment/application/components/molecule/regular_chips.dart';
import 'package:briix_assignment/domain/entities/genre.dart';
import 'package:flutter/material.dart';

class ChipsSection extends StatefulWidget {
  const ChipsSection({super.key});

  @override
  State<ChipsSection> createState() => _ChipsSectionState();
}

class _ChipsSectionState extends State<ChipsSection> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: Genre.values
          .map(
            (e) => RegularChip(
              content: e.toDisplayName(),
              onTap: () => {},
            ),
          )
          .toList(),
    );
  }
}
