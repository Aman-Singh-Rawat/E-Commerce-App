import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/converters.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key, this.onCallBack, this.focusNode});

  VoidCallback? onCallBack;
  FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onTap: onCallBack,
      readOnly: focusNode == null,
      cursorColor: const Color(0xFF101010),
      decoration: textFieldDecoration.copyWith(
        hintText: "Search",
        prefixIcon: Icon(
          Icons.search,
          color: focusNode == null ? Colors.grey : const Color(0xFF101010),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/ic_filter.svg"),
        ),
        focusedBorder: focusNode != null
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFF101010),
                  width: 1.5,
                ),
              )
            : null,
      ),
    );
  }
}
