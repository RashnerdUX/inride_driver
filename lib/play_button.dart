import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _backgroundanimation;
  late Animation _foregroundanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
      animationBehavior: AnimationBehavior.preserve,
    );
    _backgroundanimation =
        ColorTween(begin: Colors.black, end: Colors.white).animate(_controller);
    _foregroundanimation =
        ColorTween(begin: Colors.white, end: Colors.black).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 160,
          height: 48,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          decoration: BoxDecoration(
            // color: Colors.black,
            gradient: LinearGradient(
              colors: [_backgroundanimation.value, _backgroundanimation.value],
            ),
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow_rounded,
                color: _foregroundanimation.value,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                "Next Episode",
                style:
                    TextStyle(color: _foregroundanimation.value, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayButtonVer1 extends StatelessWidget {
  const PlayButtonVer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 140,
        height: 40,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 24,
            ),
            Spacer(),
            Text(
              "Next Episode",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
