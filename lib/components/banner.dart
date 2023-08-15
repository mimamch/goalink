import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({super.key, required this.dataBanner});

  final List<String> dataBanner;

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List<Widget> placeholderBanners = [
    Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          "assets/images/download.jpeg",
        ),
      )),
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  final CarouselController carouselController = CarouselController();
  int carouselIndex = 0;
  void onCarouselChange(int index, CarouselPageChangedReason reason) {
    setState(() {
      carouselIndex = index;
    });
  }

  void changeCarouselIndex(int index) {
    carouselController.animateToPage(index);
  }

  void onBannerTap(Map<String, dynamic> banner) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          // margin: const EdgeInsets.only(left: 16, right: 16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    onPageChanged: onCarouselChange,
                    aspectRatio: 20 / 9,
                    viewportFraction: 1,
                    autoPlay: true,
                  ),
                  items: widget.dataBanner.isEmpty
                      ? placeholderBanners
                      : widget.dataBanner
                          .map((e) => GestureDetector(
                                // onTap: () => onBannerTap(e),
                                child: Container(
                                    decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(e),
                                  ),
                                )),
                              ))
                          .toList(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: map<Widget>(
                      widget.dataBanner,
                      (index, image) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: carouselIndex == index
                                ? Colors.black
                                : Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
