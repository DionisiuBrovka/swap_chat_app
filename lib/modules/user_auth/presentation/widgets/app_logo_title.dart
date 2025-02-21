import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoTitle extends StatelessWidget {
  const AppLogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.black45, borderRadius: BorderRadius.circular(46)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4,
            children: [
              Text(
                "SwapChat",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SvgPicture.asset(
                "assets/images/icon.svg",
                width: 56,
                height: 56,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
