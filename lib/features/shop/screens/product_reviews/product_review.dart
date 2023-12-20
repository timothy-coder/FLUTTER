import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter_project_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter_project_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/device/device_utility.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Comentarios'),showBackArrow: true,),

      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ver mas comentarios"),
              const SizedBox(height: TSizes.spaceBtwItems),

              TOverallProductRating(),
              TRatingBarIndicator(rating: 3.5,),
              Text('12611',style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

