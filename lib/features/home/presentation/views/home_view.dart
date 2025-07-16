import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  double getScaleForItem(int index) {
    double itemWidth = 150.w + 15.w;
    double scrollOffset = _scrollController.hasClients
        ? _scrollController.offset
        : 0.0;
    double itemStart = index * itemWidth;

    double diff = (itemStart - scrollOffset);

    if (diff <= 0 && diff > -itemWidth) {
      // العنصر الأول في الشاشة
      return 1.0;
    } else {
      return 0.8;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(
            leading: SvgPicture.asset(Assets.images.logo.path),
            actionIcon: Icon(Icons.search, size: 25.sp),
          ).marginSymmetric(horizontal: 30.w, vertical: 48.w),
          SizedBox(
            height: 224.h,
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) setState(() {});
                });
                return false;
              },
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  double scale = getScaleForItem(index);

                  return ListItemCard(
                    bookImg: Assets.images.testBookImg.path,
                    scale: scale,
                  ).marginOnly(right: 12.w);
                },
              ).paddingOnly(left: 30.w),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItemCard extends StatelessWidget {
  final String bookImg;
  final double scale;

  const ListItemCard({super.key, required this.bookImg, this.scale = 1.0});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 150.w;
    double baseHeight = 200.h;

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: baseWidth * scale,
        height: baseHeight * scale,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(bookImg)),
        ),
      ),
    );
  }
}
