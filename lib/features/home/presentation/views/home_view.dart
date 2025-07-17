import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/theme/app_colors.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_header.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/list_item_card.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeader(
            leading: SvgPicture.asset(
              Assets.images.logo.path,
              color: !Get.isDarkMode ? AppColors.onBackgroundLight : null,
            ),
            actionIcon: Icon(Icons.search, size: 25.sp),
          ).marginSymmetric(horizontal: 30.w, vertical: 48.w),
          _buildListViewAndItsAnimated(),
          50.height,
          Text(
            'Best Seller',
            style: Get.textTheme.titleLarge,
          ).marginSymmetric(horizontal: 30.w),
        ],
      ),
    );
  }

  Widget _buildListViewAndItsAnimated() {
    return SizedBox(
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
    );
  }
}
