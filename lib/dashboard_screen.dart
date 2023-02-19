import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pacimon/core/theme/app_fonts.dart';
import 'package:pacimon/core/theme/app_images.dart';
import 'package:pacimon/widgets/poki_widgets.dart';
import 'core/theme/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: [
                    const Text(
                      'PokeApp',
                      style: AppFonts.w700s48,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      AppImeges.logo,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Pokemon list',
                style: AppFonts.w600s24,
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Find the pokemon you want',
                style: AppFonts.w500s14,
              ),
              const SizedBox(height: 12),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 45.0,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10),
                            fillColor: AppColor.gray,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Search here ...',
                            labelStyle: TextStyle(color: AppColor.colortext)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: const Color(0xff43403F),
                            padding: const EdgeInsets.all(5),
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)))),
                        onPressed: () {},
                        child: const Icon(
                          Icons.search,
                          color: AppColor.colortext,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              const PokiWidget(),
              const PokiWidget(),
              const PokiWidget(),
              const PokiWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
