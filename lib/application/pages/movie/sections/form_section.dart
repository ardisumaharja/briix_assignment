import 'package:briix_assignment/application/components/molecule/regular_input.dart';
import 'package:briix_assignment/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';

class FormSection extends StatefulWidget {
  const FormSection({
    super.key,
    required this.movieEntity,
    required this.titleChange,
    required this.directorChange,
    required this.summaryChange,
  });

  final MovieEntity? movieEntity;
  final ValueChanged<String> titleChange;
  final ValueChanged<String> directorChange;
  final ValueChanged<String> summaryChange;

  @override
  State<FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<FormSection> {
  TextEditingController titleCtrl = TextEditingController();
  TextEditingController directorCtrl = TextEditingController();
  TextEditingController summaryCtrl = TextEditingController();

  @override
  void initState() {
    if (widget.movieEntity != null) {
      titleCtrl.text = widget.movieEntity?.title ?? '';
      directorCtrl.text = widget.movieEntity?.director ?? '';
      summaryCtrl.text = widget.movieEntity?.summary ?? '';
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant FormSection oldWidget) {
    if (widget.movieEntity != oldWidget.movieEntity) {
      titleCtrl.text = widget.movieEntity?.title ?? '';
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    titleCtrl.dispose();
    directorCtrl.dispose();
    summaryCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegularInput(
          label: 'Title',
          controller: titleCtrl,
          onChange: widget.titleChange,
        ),
        const SizedBox(height: 12),
        RegularInput(
          label: 'Director',
          controller: directorCtrl,
          onChange: widget.directorChange,
        ),
        const SizedBox(height: 12),
        RegularInput(
          label: 'Summary',
          controller: summaryCtrl,
          onChange: widget.summaryChange,
        ),
      ],
    );
  }
}
