import 'package:dots_indicator/dots_indicator.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day1/delivery/page/popular_food_detail.dart';
import 'package:flutter_day1/delivery/widget/icon_text.dart';
import 'package:flutter_day1/util/app_layout.dart';
import 'package:flutter_day1/util/appstyle.dart';
import 'package:gap/gap.dart';

import '../widget/bottom_popular_item.dart';

class DeliveryHomePage extends StatefulWidget {
  const DeliveryHomePage({super.key});

  @override
  State<DeliveryHomePage> createState() => _DeliveryHomePageState();
}

class _DeliveryHomePageState extends State<DeliveryHomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.85);

  var currentPageValue = 0.0;
  var scaleMin = 0.85;
  var scaleMax = 1.0;
  var pageSize = 6;
  var widgetHeight = AppLayout.getHeight(200);
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Widget _buildBodyPage() {
    return Scaffold(
        body: Column(
      children: [
        _buildTopView(),
        Gap(AppLayout.getHeight(16)),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHorizontalPageView(),
                _buildIndicatorView(),
                Gap(AppLayout.getHeight(30)),
                _buildListTitleView(),
                Gap(AppLayout.getHeight(30)),
                _buildBottomListView(),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Widget _buildListTitleView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Popular",
            style: Styles.headLineStyle.copyWith(color: Colors.black),
          ),
          Gap(8),
          Text(
            "· Food pairing",
            style: Styles.headLineSmallStyle2,
          )
        ],
      ),
    );
  }

  Widget _buildBottomListView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, int index) {
            return _buildPopularItemView(index);
          }),
    );
  }

  Widget _buildPopularItemView(int index) {
    return PopularBottomItemView();
  }

  Widget _buildHorizontalPageView() {
    return Container(
      height: AppLayout.getHeight(300),
      child: PageView.builder(
          controller: _pageController,
          onPageChanged: (int index) {},
          itemCount: pageSize,
          itemBuilder: (BuildContext context, int index) {
            return _dispatchBuildItemView(index);
          }),
    );
  }

  Widget _buildIndicatorView() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: DotsIndicator(
          dotsCount: pageSize,
          position: currentPageValue,
          decorator: DotsDecorator(
              size: Size.square(9.0),
              activeSize: Size(18.0, 9.0),
              activeColor: Styles.orangeColor,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)))),
        ));
  }

  void _onBannerItemClick(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return PopularFoodDetail();
    }));
  }

  Widget _dispatchBuildItemView(int index) {
    Matrix4 matrix4 = new Matrix4.identity();
    var currTrans = 0.0;
    if (index == currentPageValue.floor()) {
      var curScale = 1 - (scaleMax - scaleMin) * (currentPageValue - index);
      var currTrans = widgetHeight * (1 - curScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var curScale =
          scaleMin + (scaleMax - scaleMin) * (currentPageValue - index);
      var currTrans = widgetHeight * (1 - curScale) / 2;

      matrix4 = Matrix4.diagonal3Values(1, curScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if ((index == currentPageValue.floor() - 1) &&
        currentPageValue.floor() >= 1) {
      var curScale =
          scaleMax - (scaleMax - scaleMin) * (currentPageValue - index);
      var currTrans = widgetHeight * (1 - curScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var scale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix4,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return PopularFoodDetail();
          }));
        },
        child: Stack(
          children: [
            Container(
              height: AppLayout.getHeight(200),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(30))),
                  image: const DecorationImage(
                      image: AssetImage("images/icon.png"), fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: AppLayout.getHeight(120),
                margin: EdgeInsets.only(
                    left: AppLayout.getWidth(30),
                    right: AppLayout.getWidth(30),
                    bottom: AppLayout.getHeight(30)),
                padding: EdgeInsets.all(AppLayout.getHeight(12)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: Offset(0, 3)),
                    BoxShadow(color: Colors.white, offset: Offset(-3, 0)),
                  ],
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(16))),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Chinese Side",
                          style: Styles.headLineSmallStyle
                              .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Container(
                                    child: Icon(
                                      Icons.star,
                                      size: AppLayout.getWidth(15),
                                      color: Styles.orangeColor,
                                    ),
                                  )),
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Text(
                          "4.5",
                          style: Styles.headLineSmallStyle2,
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Text(
                          "1234 comments",
                          style: Styles.headLineSmallStyle2,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(16)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HorizontalIconTextView(
                          text: "Normal",
                          icons: Icons.description,
                          colors: Colors.orange,
                        ),
                        HorizontalIconTextView(
                          text: "1.7km",
                          icons: Icons.location_on_sharp,
                          colors: Colors.greenAccent,
                        ),
                        HorizontalIconTextView(
                          text: "32min",
                          icons: Icons.timer,
                          colors: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopView() {
    return Container(
      padding: EdgeInsets.only(
          left: AppLayout.getHeight(16),
          top: AppLayout.getHeight(54),
          right: AppLayout.getHeight(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "China",
                style: Styles.headLineSmallStyle
                    .copyWith(color: Styles.orangeColor),
              ),
              Row(
                children: [
                  Text(
                    'Shanghai',
                    style: Styles.headLineSmallStyle2.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppLayout.getHeight(8)))),
            child: Icon(
              FluentSystemIcons.ic_fluent_search_regular,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: _buildBodyPage(),
    );
  }
}
