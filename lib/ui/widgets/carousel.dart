import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CategoryCarouselWidgetState();
}

class _CategoryCarouselWidgetState extends State<CarouselWidget> {
  late PageController _pageController;

  List<String> images = [
    "https://i0.wp.com/sonoff.kz/wp-content/uploads/2018/11/google_home.jpg?w=563&ssl=1",
    "https://i0.wp.com/sonoff.kz/wp-content/uploads/2018/11/sonoff-alexa.jpg?w=563&ssl=1",
    "https://i0.wp.com/sonoff.kz/wp-content/uploads/2018/11/sonoff-ifttt.jpg?w=563&ssl=1",
    "https://i0.wp.com/sonoff.kz/wp-content/uploads/2018/11/sonoff-nest.jpg?w=563&ssl=1"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  int activePage = 1;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      pageSnapping: true,
      controller: _pageController,
      itemCount: images.length,
      itemBuilder: (context, pagePosition) {
        bool active = pagePosition == activePage;
        return slider(images, pagePosition, active);
      },
      onPageChanged: (page) {
        setState(() {
          activePage = page;
        });
      },
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          images[pagePosition],
        ),
      ),
    ),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Image.network(
        images[pagePosition],
      ),
    ),
  );
}
