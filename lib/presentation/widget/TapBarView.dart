import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/widget/tap_button.dart';
import 'package:flutter/material.dart';

class TapBarView extends StatelessWidget {
  const TapBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          height: 50,
          color: Colors.transparent,
          child: TabBar(
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kSecondaryColor),
            tabs: const [
              Tab(
                child: TapButton(
                  text: 'electronic',
                ),
              ),
              Tab(
                child: TapButton(
                  text: 'jewelery',
                ),
              ),
              Tab(
                child: TapButton(
                  text: 'clothing',
                ),
              ),
            ],
          )),
    );
  }
}