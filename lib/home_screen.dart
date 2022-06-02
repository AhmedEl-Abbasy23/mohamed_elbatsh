import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff26273E),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffEC6454),
        title: SvgPicture.asset(
          'assets/images/logo.svg',
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 10.0),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/right_combinations.svg',
              height: 30.0,
              width: 30.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              CustomPaint(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                painter: HeaderCurvedContainer(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Good Morning',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Tuesday, 15 June 2018',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 14.0),
                            ),
                          ],
                        ),
                        const Text(
                          '36º',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (context, index, _) {
                      return SizedBox(
                        width: double.infinity,
                        child: Card(
                          elevation: 1.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: const BorderSide(
                                color: Colors.white, width: 1.5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              'assets/images/profile.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 130.0,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '01:34 hr',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                Text(
                  '8793 cal',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          /*GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [

            ],
          ),*/
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    _containerCategory(
                        'assets/images/dumbbells.svg', 'GYMS', () {}),
                    const SizedBox(height: 15.0),
                    _containerCategory(
                        'assets/images/cutlery.svg', 'Heath Restaurant', () {}),
                  ],
                ),
                Column(
                  children: [
                    _containerCategory('assets/images/business-contact-85.svg',
                        'Trainers', () {}),
                    const SizedBox(height: 15.0),
                    _containerCategory(
                        'assets/images/shop.svg', 'E-COMMERCE', () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _containerCategory(String imgPath, String title, Function onTap) {
  return GestureDetector(
    onTap: () {
      onTap();
    },
    child: Container(
      height: 110.0,
      width: 175.0,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(imgPath,
              height: 30.0, width: 30.0, fit: BoxFit.cover),
          const SizedBox(height: 20.0),
          Expanded(
              child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          )),
        ],
      ),
    ),
  );
}

// CustomPainter class to for the header curved-container
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xffEC6454);
    Path path = Path()
      ..relativeLineTo(0, 240)
      ..quadraticBezierTo(size.width / 2, 330.0, size.width, 240)
      ..relativeLineTo(0, -240)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
