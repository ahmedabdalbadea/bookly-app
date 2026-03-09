import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  Offset initOffset = Offset(0, 2);

  @override
  void initState() {
    super.initState();
    animateSlidingText();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.kLogo),
          const SizedBox(height: 4),
          AnimatedSlide(
            offset: initOffset,
            duration: Duration(seconds: 1),
            child: Text("Free Books For Reading"),
          ),
        ],
      ),
    );
  }

  Future<void> animateSlidingText() {
    return Future.delayed(Duration(milliseconds: 100), () {
      initOffset = Offset(0, 0);

      setState(() {});
    });
  }
}
