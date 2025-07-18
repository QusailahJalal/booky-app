import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/theme/app_colors.dart';
import 'package:my_bookly_app/core/theme/app_text_styles.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Image.asset(
            Assets.images.testBookImg.path,
            fit: BoxFit.fill,
            width: 70.w,
            height: 105.h,
          ),
        ),
        30.width,
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                style: AppTextStyles.style30,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'J.K. Rowling',
                style: AppTextStyles.style14.copyWith(
                  color: AppColors.textSecondaryDark,
                ),
              ), //
              Text(
                '19.99 €',
                style: AppTextStyles.style15Bold, //left: 39.06%;
              ), //
            ],

            //left: 39.06%;
          ),
        ),
      ],
    );
  }
}
