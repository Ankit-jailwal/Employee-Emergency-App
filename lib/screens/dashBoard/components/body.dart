import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'https://indojapanpulse.com/wp-content/uploads/2018/11/02_Lets_Get_Prepared-20.jpg',
    'https://indojapanpulse.com/wp-content/uploads/2018/11/02_Lets_Get_Prepared-26.jpg',
    'https://compote.slate.com/images/0c46318a-314c-4a32-8ffd-9e48515995be.jpg',
    'https://indojapanpulse.com/wp-content/uploads/2018/11/02_Lets_Get_Prepared-20.jpg',
    'https://indojapanpulse.com/wp-content/uploads/2018/11/02_Lets_Get_Prepared-26.jpg',
    'https://compote.slate.com/images/0c46318a-314c-4a32-8ffd-9e48515995be.jpg',
  ];
  List<Widget> generateImageTiles(screenSize) {
    var screenSize = MediaQuery.of(context).size;
    return images.map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              element,
              height:screenSize.height*0.35,
              fit: BoxFit.cover,
            ),
          ),
    )
        .toList();
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              scrollPhysics: PageScrollPhysics(),
              enlargeCenterPage: true,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              }),
          carouselController: _controller,
        ),
      ],
    );
  }
}
