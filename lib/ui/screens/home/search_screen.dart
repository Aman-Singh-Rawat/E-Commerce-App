import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoesy/ui/widgets/search_view.dart';
import 'package:shoesy/utils/converters.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 60),
      child: Column(
        children: [
          SearchView(
            focusNode: _focusNode,
          ),
        ],
      ),
    ));
  }
}
