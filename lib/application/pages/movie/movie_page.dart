import 'package:auto_route/auto_route.dart';
import 'package:briix_assignment/application/components/molecule/regular_input.dart';
import 'package:briix_assignment/application/pages/movie/sections/chips_section.dart';
import 'package:briix_assignment/application/pages/movie/sections/form_section.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MoviePage extends StatefulWidget {
  const MoviePage({super.key, required this.isCreate});

  final bool isCreate;

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isCreate ? 'Input Movie' : 'Detail Movie'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: const [
          Icon(Icons.delete),
          SizedBox(width: 10),
          Icon(Icons.save),
          SizedBox(width: 18),
        ],
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FormSection(),
              SizedBox(height: 18),
              ChipsSection(),
            ],
          )),
    );
  }
}
