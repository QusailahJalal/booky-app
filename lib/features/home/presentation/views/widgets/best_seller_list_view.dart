import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';
import 'package:my_bookly_app/core/utils/routers/routes.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => BestSellerItem().onTap(() {
        GoRouter.of(context).push(Routes.BookDetails);
      }),
      separatorBuilder: (context, index) =>
          Column(children: [10.height, 3.hDivider, 20.height]),
      itemCount: 15,
    ).paddingSymmetric(horizontal: 30.w);
  }
}
