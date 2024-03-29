import 'package:flutter/material.dart';
import 'package:flutter_main_widgets/widgets/buttons/flatButton.dart';
import 'package:flutter_main_widgets/widgets/customAppBar.dart/customAppBar.dart';
import 'package:flutter_main_widgets/widgets/radio/2)radio.dart';
import 'package:flutter_main_widgets/widgets/slider/1)%20slider.dart';
import 'package:flutter_main_widgets/widgets/slider/4)%20slider.dart';

class WidgetOfTheDay extends StatelessWidget {
  const WidgetOfTheDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
  width: 400,
  height: 300,
  decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          const Color(0xFF0072ff),
          Color(0xFF00c6ff),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.8),
          blurRadius: 6,
          offset: const Offset(0, 3),
        ),
      ],
  ),
  child: Stack(
      children: [
        Positioned(
          top: 30,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: const Text(
              "NEW",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Widget of the Day",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Check out our latest widget!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -50,
          bottom: -50,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
  ),
),
    );
  }
}

class AnimatedBanner extends StatefulWidget {
  const AnimatedBanner({Key? key}) : super(key: key);

  @override
  _AnimatedBannerState createState() => _AnimatedBannerState();
}

class _AnimatedBannerState extends State<AnimatedBanner>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 400,
        height: 280,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              const Color(0xFF0072ff),
              const Color(0xFF00c6ff),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: const Text(
                  "NEW",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeTransition(
                    opacity: _animation,
                    child: const Text(
                      "Widget of the Day",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FadeTransition(
                    opacity: _animation,
                    child: const Text(
                      "Check out our latest widget!",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -50,
              bottom: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetOfTheDayBanner extends StatefulWidget {
  const WidgetOfTheDayBanner({Key? key}) : super(key: key);

  @override
  _WidgetOfTheDayBannerState createState() => _WidgetOfTheDayBannerState();
}

class _WidgetOfTheDayBannerState extends State<WidgetOfTheDayBanner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 1000,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 228, 9, 221),
            Color.fromARGB(255, 24, 167, 233),
            Color.fromARGB(255, 228, 9, 202),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          const Positioned(
                top: 20,
                left: 5,
                child: CustomAppBar(
                  
                )
              ),
          const Positioned(
                top: 150,
                left: 5,
                child: SizedBox(
                  width: 380.0,
                  child: MyRadio(),
                ),
              ),
          AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, 100 * _animation.value),
              child: child,
            );
          },
          child: Stack(
            children: [
              Positioned(
                bottom: 250,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: const Text(
                    "Slider",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Widget of the Day",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Check out our latest widget!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -50,
                bottom: -50,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: const [
                      Positioned(
                        top: 60.0,
                        left: 70.0,
                        child: Text(
                    "10",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      ),
    );
  }
}


class SliderBar extends StatelessWidget {
  const SliderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySlider(),
        SizedBox(height: 10.0,),
        MySlider(),
        SizedBox(height: 10.0,),
        MySlider(),
      ],
    );
  }
}