import 'package:briix_assignment/application/components/molecule/regular_input.dart';
import 'package:flutter/material.dart';

class SearchMovieSection extends StatefulWidget {
  const SearchMovieSection({super.key});

  @override
  State<SearchMovieSection> createState() => _SearchingMovieState();
}

class _SearchingMovieState extends State<SearchMovieSection> {
  String text = '';
  TextEditingController searchingCtrl = TextEditingController();

  @override
  void dispose() {
    searchingCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RegularInput(
      hintText: 'Search by title...',
      controller: searchingCtrl,
      onChange: (value) {
        setState(() {
          text = value;
        });
      },
      prefixIcon: Icons.search,
      suffix: InkWell(
        onTap: () => {
          setState(() {
            // text = '';
            searchingCtrl.text = '';
          })
        },
        child: text.isNotEmpty
            ? const Icon(Icons.close)
            : const SizedBox(
                width: 10,
              ),
      ),
    );
  }
}
