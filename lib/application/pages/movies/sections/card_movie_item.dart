import 'package:flutter/material.dart';

class CardMovieItem extends StatelessWidget {
  const CardMovieItem({
    super.key,
    required this.title,
    required this.director,
    required this.genres,
    required this.id,
    required this.onTap,
  });

  final String title;
  final String director;
  final List<String> genres;
  final String id;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Card(
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(director),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(genres.join('/')),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
