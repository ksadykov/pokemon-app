import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pacimon/core/theme/app_images.dart';

import '../core/theme/app_color.dart';

class PokiWidget extends StatelessWidget {
  const PokiWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Enter text',
          hintStyle: TextStyle(color: Colors.white),
          fillColor: AppColor.gray,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 24, left: 210),
        child: Image.asset(
          AppImeges.poki,
          width: 100,
          height: 100,
        ),
      ),
    ]);
  }
}
