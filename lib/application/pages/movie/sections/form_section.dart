import 'package:briix_assignment/application/components/molecule/regular_input.dart';
import 'package:flutter/material.dart';

class FormSection extends StatefulWidget {
  const FormSection({super.key});

  @override
  State<FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<FormSection> {
  TextEditingController titleCtrl = TextEditingController();
  TextEditingController directorCtrl = TextEditingController();
  TextEditingController summaryCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegularInput(
          label: 'Title',
          controller: titleCtrl,
        ),
        const SizedBox(height: 12),
        RegularInput(
          label: 'Director',
          controller: directorCtrl,
        ),
        const SizedBox(height: 12),
        RegularInput(
          label: 'Summary',
          controller: summaryCtrl,
        ),
      ],
    );
  }
}
