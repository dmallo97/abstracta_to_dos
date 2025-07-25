import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.hintText,
    required this.onSubmitted,
  });

  final Function(String) onSubmitted;
  final String hintText;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late String searchText;

  @override
  void initState() {
    super.initState();
    searchText = '';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        onChanged: (value) {
          setState(() {
            searchText = value;
          });
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17.5),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(10.0, 1.0, 5.0, 0.0),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(13),
            child: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          suffix: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: 30,
              child: FilledButton(
                onPressed: searchText.trim().isEmpty ? null : () => widget.onSubmitted.call(searchText),
                style: FilledButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                child: const Text('Go'),
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17.5),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          labelStyle: const TextStyle(
            color: AppColors.lightBlack,
          ),
          hintStyle: const TextStyle(fontSize: 17, color: AppColors.darkGrey, fontWeight: FontWeight.normal),
          hintText: widget.hintText,
        ),
        textInputAction: TextInputAction.search,
        style: const TextStyle(),
      ),
    );
  }
}
